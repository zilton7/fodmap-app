require 'csv'

csv_file = File.read(Rails.root.join('lib', 'data', 'fodmap_foods.csv'))
csv = CSV.parse(csv_file, headers: true)

Food.delete_all

csv.each do |row|
  attrs = {
    name: row['Food name en_US'],
    category: row['Category'],
    overall_status: row['Overall status'],
    small_portion_desc: row['Small portion desc'],
    small_portion_oligos: row['Small portion oligos'],
    small_portion_fructose: row['Small portion fructose'],
    small_portion_polyols: row['Small portion polyols'],
    small_portion_lactose: row['Small portion lactose'],
    large_portion_desc: row['Large portion desc'] == 'n/a' ? nil : row['Large portion desc'],
    large_portion_oligos: row['Large portion oligos'] == 'n/a' ? nil : row['Large portion oligos'],
    large_portion_fructose: row['Large portion fructose'] == 'n/a' ? nil : row['Large portion fructose'],
    large_portion_polyols: row['Large portion polyols'] == 'n/a' ? nil : row['Large portion polyols'],
    large_portion_lactose: row['Large portion lactose'] == 'n/a' ? nil : row['Large portion lactose'],
    notes: row['Notes'].blank? ? nil : row['Notes']
  }

  Food.create!(attrs) if Food.where(name: attrs[:name]).none?
end
