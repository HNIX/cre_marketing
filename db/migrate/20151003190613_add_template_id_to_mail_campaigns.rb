class AddTemplateIdToMailCampaigns < ActiveRecord::Migration
  def change
    add_column :mail_campaigns, :mail_template_id, :integer
    add_column :mail_campaigns, :aasm_state, :string
  end
end
