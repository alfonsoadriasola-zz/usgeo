namespace :dataload do

  desc "load US.txt"
  task :run => :environment do
    DataPoint.delete_all
    require 'csv'
    File.foreach('US.txt') do |row|

      begin
        row.encode!('UTF-8')
        array = CSV::parse_line(row, {:col_sep => "\t", :quote_char => '"' })
        DataPoint.create(
                :geonameid => array[0],
                :name => array[1],
                :asciiname => array[2],
                :alternatenames => array[3],
                :latitude=> array[4],
                :longitude => array[5],
                :feature_class => array[6],
                :feature_code => array[7],
                :country_code => array[8],
                :cc2 => array[9],
                :admin1_code => array[10],
                :admin2_code => array[11],
                :admin3_code => array[12],
                :admin4_code => array[13],
                :population => array[14],
                :elevation => array[15],
                :gtopo30 => array[16],
                :timezone=> array[17],
                :modification_date=> array[18])
      rescue
        puts row
      end

    end
  end

end