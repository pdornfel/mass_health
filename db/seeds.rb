require 'csv'

datafile = Rails.root + "db/data/mass_health_data.csv"

def format(row)
        row.gsub(/[,]/,'').gsub(/[$]/,'').gsub(/^NA$/,'') if row.present?
end

CSV.foreach(datafile, headers: true) do |row|
    unless row["Geography"] == nil
        TownHealthRecord.find_or_initialize_by(geography:row["Geography"]) do |hr|
            hr.geography = format(row["Geography"])
            hr.total_pop_year_2005 = format(row["total pop, year 2005"]).to_f
            hr.age_0_to_19_year_2005 = format(row["age 0-19, year 2005"]).to_f
            hr.age_65_plus_year_2005 = format(row["age 65+, year 2005"]).to_f
            hr.per_capita_income_year_2000 = format(row["Per Capita Income, year 2000"]).to_f
            hr.person_living_below_200_percent_poverty_year_2010 = format(row["Persons Living Below 200% Poverty, year 2000 "]).to_f
            hr.per_all_per_liv_below_200_per_pov_lvl_year_2010 = format(row["% all Persons Living Below 200% Poverty Level, year 2000"]).to_f
            hr.percent_adequacy_prenatal_care_kotelchuck = format(row["% adequacy prenatal care (kotelchuck)"]).to_f
            hr.percent_c_section_deliveries_2005_2008 = format(row["% C-section deliveries, 2005-2008"]).to_f
            hr.number_of_infant_deaths_2005_2008 = format(row["Number of infant deaths, 2005-2008"]).to_f
            hr.infant_mortality_rate_deaths_per_1000_live_births_2005_2008 = format(row["Infant mortality rate (deaths per 1000 live births), 2005-2008"]).to_f
            hr.percent_low_birthweight_2005_2008 = format(row["% low birthweight 2005-2008"]).to_f
            hr.percent_multiple_births_2005_2008 = format(row["% multiple births, 2005-2008"]).to_f
            hr.percent_publicly_financed_prenatal_care_2005_2008 = format(row["% publicly financed prenatal care, 2005-2008"]).to_f
            hr.percent_teen_births_2005_2008 = format(row["% teen births, 2005-2008"]).to_f
            hr.save
        end
    end

end

