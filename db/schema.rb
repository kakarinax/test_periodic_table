# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_07_043833) do

  create_table "elements", force: :cascade do |t|
    t.string "order"
    t.string "name"
    t.text "appearance"
    t.float "atomic_mass"
    t.float "boil"
    t.string "category"
    t.string "color"
    t.float "density"
    t.string "discovered_by"
    t.float "melt"
    t.float "molat_heat"
    t.string "named_by"
    t.integer "number"
    t.integer "period"
    t.string "phase"
    t.string "source"
    t.string "spectral_img"
    t.text "summary"
    t.string "symbol"
    t.integer "xpos"
    t.integer "ypos"
    t.integer "shells"
    t.text "electron_configuration"
    t.text "electron_configuration_semantic"
    t.float "electron_affinity"
    t.float "electronegativity_pauling"
    t.float "ionization_energies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
