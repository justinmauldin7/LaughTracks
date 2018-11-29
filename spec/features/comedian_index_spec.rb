RSpec.describe "Comedian Index Page" do
  describe "As a visitor" do
    it "should display comedian info" do
      comedian = Comedian.create(name: "Mike", age: 33, city: "Texas")
      comedian2 = Comedian.create(name: "Tom", age: 30, city: "Amarillo")

      visit "/comedians"

      within "#comic-#{comedian.id}" do
        expect(page).to have_content(comedian.name)
        expect(page).to have_content("Age: #{comedian.age}")
        expect(page).to have_content("Hometown: #{comedian.city}")
      end

      within "#comic-#{comedian2.id}" do
        expect(page).to have_content(comedian2.name)
        expect(page).to have_content("Age: #{comedian2.age}")
        expect(page).to have_content("Hometown: #{comedian2.city}")
      end
    end
    it "should display special info" do
      comedian = Comedian.create(name: "Mike", age: 33, city: "Texas")
      special1 = comedian.specials.create(title: "title", year: 2018, runtime: 200, image: "https://image.jpg")
      special2 = comedian.specials.create(title: "title2", year: 2017, runtime: 220, image: "https://image2.jpg")

      

      visit '/comedians'

      within "#comic-#{comedian.id}" do
        expect(page).to have_content(special1.title)
        expect(page).to have_content("Year: #{special1.year}")
        expect(page).to have_content("Runtime: #{special1.runtime}")
        expect(page).to have_css("img[src='#{special1.image}']")
        expect(page).to have_content(special2.title)
        expect(page).to have_content("Year: #{special2.year}")
        expect(page).to have_content("Runtime: #{special2.runtime}")
        expect(page).to have_css("img[src='#{special2.image}']")
      end
    end
  end
end
