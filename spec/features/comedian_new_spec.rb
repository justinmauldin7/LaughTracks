RSpec.describe "Comedian Creation Page" do
  describe "as a visitor" do
    it "can create a comedian" do
      comedian = Comedian.create(name: "Sally", age: 23, city: "Colorado")

    visit "/comedians/new"

    fill_in "comedian[name]", with: "Sally"
    fill_in "comedian[name]", with: 23
    fill_in "comedian[name]", with: "Colorado"
    click_button "Submit"

    expect(current_path).to eq('/comedians')

      within "#comic-#{comedian.id}" do
        expect(page).to have_content(comedian.name)
        expect(page).to have_content("Age: #{comedian.age}")
        expect(page).to have_content("Hometown: #{comedian.city}")
        expect(page).to have_content("Total Specials: #{comedian.specials.count}")
      end
    end
  end
end
