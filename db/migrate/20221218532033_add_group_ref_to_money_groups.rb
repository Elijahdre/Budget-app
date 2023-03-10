# frozen_string_literal: true

class AddGroupRefToMoneyGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :money_groups, :group, null: false, foreign_key: true
  end
end
