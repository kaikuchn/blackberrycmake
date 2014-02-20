require 'nokogiri'

raise unless File.exists? '/Applications/Momentics.app/target_10_2_0_1155/blackberry-sdk-descriptor.xml'

doc = Nokogiri::XML(File.open('/Applications/Momentics.app/target_10_2_0_1155/blackberry-sdk-descriptor.xml'))
open('BBLibraryInfo.cmake', 'w+') do |file|
	file.puts(
		%Q{# This file is generated via the lib_extractor.rb script.
# Information contained in this file is extracted from the blackberry-sdk-descriptor.xml file.

# set QNX_TARGET based on the environment variable
if(NOT DEFINED QNX_TARGET)
	set(QNX_TARGET $ENV{QNX_TARGET})
endif()
		}
	)


	lib_paths = doc.css("sdk libraries library-search-paths path").to_a
	file.puts("set(BB_LIB_PATHS #{lib_paths.join(' ')})")

	doc.css("sdk libraries library").each do |lib|
		next if lib.at('libname').nil?

		name = lib.at('name').content unless lib.at('name').nil?
		category = lib.at('category').content unless lib.at('category').nil?
		description = lib.at('description').content unless lib.at('description').nil?
		file.puts("\n# #{[name, category, description].compact.join(' -- ')}")
		
		libname = lib.at('libname').content
		file.puts("set(#{libname.upcase}_LIBRARY_NAME #{libname})")
		
		next if lib.at('include-path').nil?
		
		include_path = lib.at('include-path').content
		file.puts("set(#{libname.upcase}_INCLUDE_DIR #{include_path})")
	end
end