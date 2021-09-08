class CreateElements < ActiveRecord::Migration[6.1]
  def change
    create_table :elements do |t|
      t.string :order
      t.string :name
      t.text :appearance
      t.float :atomic_mass
      t.float :boil
      t.string :category
      t.string :color
      t.float :density
      t.string :discovered_by
      t.float :melt
      t.float :molat_heat
      t.string :named_by
      t.integer :number
      t.integer :period
      t.string :phase
      t.string :source
      t.string :spectral_img
      t.text :summary
      t.string :symbol
      t.integer :xpos
      t.integer :ypos
      t.integer :shells
      t.text :electron_configuration
      t.text :electron_configuration_semantic
      t.float :electron_affinity
      t.float :electronegativity_pauling
      t.float :ionization_energies

      t.timestamps
    end
  end
end
