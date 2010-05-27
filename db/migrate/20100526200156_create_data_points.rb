class CreateDataPoints < ActiveRecord::Migration
  def self.up
    create_table :data_points do |t|
      t.integer :geonameid
      t.string :name
      t.string :asciiname
      t.string :alternatenames
      t.float :latitude
      t.float :longitude
      t.string :feature_class
      t.string :feature_code
      t.string :country_code
      t.string :cc2
      t.string :admin1_code
      t.string :admin2_code
      t.string :admin3_code
      t.string :admin4_code
      t.integer :population
      t.float :elevation
      t.integer :gtopo30
      t.string :timezone
      t.date :modification_date
    end
  end

  def self.down
    drop_table :data_points
  end
end
