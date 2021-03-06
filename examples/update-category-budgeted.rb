require 'date'
require 'ynab'

def update_category_budgeted
  access_token = ENV['YNAB_ACCESS_TOKEN']
  ynab = YNAB::API.new(access_token)

  budget_id = ENV['YNAB_BUDGET_ID']
  category_id = 'a191ac84-de09-not-real-6c5ed8cfdabe'
  month = '2018-09-01'
  month_category = { budgeted: 20382 }

  begin
    # Update budgeted amount to 203.82 in 2018-09-01 for category_id
    response = ynab.categories.update_month_category(budget_id, '2018-09-01', category_id, month_category: month_category)
    month_category_response = response.data.category
    puts "[budgeted: #{month_category_response.budgeted}, balance: #{month_category_response.balance}]"
  rescue => e
    puts "ERROR: id=#{e.id}; name=#{e.name}; detail: #{e.detail}"
  end
end

update_category_budgeted
