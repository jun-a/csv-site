class ContractStatuses < ActiveRecord::Migration
  def change
    create_table  :contract_statuses do |t|
      t.string  :contract_status

    end
  end
end
