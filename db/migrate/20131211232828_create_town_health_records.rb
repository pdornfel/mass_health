class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|

      t.string :geography
      t.integer :total_pop_year_2005
      t.integer :age_0_to_19_year_2005
      t.integer :age_65_plus_year_2005
      t.integer :per_capita_income_year_2000
      t.integer :person_living_below_200_percent_poverty_year_2010
      t.decimal :per_all_per_liv_below_200_per_pov_lvl_year_2010
      t.decimal :percent_adequacy_prenatal_care_kotelchuck
      t.decimal :percent_c_section_deliveries_2005_2008
      t.decimal :number_of_infant_deaths_2005_2008
      t.integer :infant_mortality_rate_deaths_per_1000_live_births_2005_2008
      t.decimal :percent_low_birthweight_2005_2008
      t.decimal :percent_multiple_births_2005_2008
      t.decimal :percent_publicly_financed_prenatal_care_2005_2008
      t.decimal :percent_teen_births_2005_2008


      t.timestamps
    end
  end
end


