require 'rails_helper'

describe "order flow" do
  it "user can add item to order" do
    user = User.create(name: "new_user", email: "new_user@example.com")
    item = Item.create(name: "New Item", 
                       description: "New item description", 
                       image_url: "http://robohash.org/1.png?set=set2&bgset=bg1&size=200x200")

    visit item_path(item.id)
    click_on("Purchase")
    
    expect(page).to have_content("Order: #{item.id}")  
    expect(page).to have_content("New Item")
    expect(page).to have_content("New item description")
  end
end
