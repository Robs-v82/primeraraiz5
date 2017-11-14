class AddStfftoevents < ActiveRecord::Migration
  def change
    add_column :events, :critical_event, :boolean

    add_column :events, :wounded_civil_servants, :integer
    add_column :events, :wounded_officers, :integer
    add_column :events, :wounded_officers_agency, :string
    add_column :events, :wounded_unarmed_civilians, :integer
    add_column :events, :wounded_armed_civilians, :integer
    add_column :events, :wounded_women, :integer
    add_column :events, :wounded_minors, :integer
    add_column :events, :wounded_indigenous, :integer

    add_column :events, :dead_civil_servants, :integer
    add_column :events, :dead_officers, :integer
    add_column :events, :dead_officers_agency, :string
    add_column :events, :dead_unarmed_civilians, :integer
    add_column :events, :dead_armed_civilians, :integer
    add_column :events, :dead_women, :integer
    add_column :events, :dead_minors, :integer
    add_column :events, :dead_indigenous, :integer

    add_column :events, :missing_civil_servants, :integer
    add_column :events, :missing_officers, :integer
    add_column :events, :missing_officers_agency, :string
    add_column :events, :missing_unarmed_civilians, :integer
    add_column :events, :missing_armed_civilians, :integer
    add_column :events, :missing_women, :integer
    add_column :events, :missing_minors, :integer
    add_column :events, :missing_indigenous, :integer

    add_column :events, :under_arrest_civil_servants, :integer
    add_column :events, :under_arrest_officers, :integer
    add_column :events, :under_arrest_officers_agency, :string
    add_column :events, :under_arrest_unarmed_civilians, :integer
    add_column :events, :under_arrest_armed_civilians, :integer
    add_column :events, :under_arrest_women, :integer
    add_column :events, :under_arrest_minors, :integer
    add_column :events, :under_arrest_indigenous, :integer
    add_column :events, :detention_date, :date
    add_column :events, :detention_time, :time
    add_column :events, :detention_denial, :boolean
    add_column :events, :detention_violence, :boolean
    add_column :events, :detention_location, :string
  end
end
