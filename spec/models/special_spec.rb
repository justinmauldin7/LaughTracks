RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end

    describe 'class methods' do
      it 'has an average runtime' do
        comedian = Comedian.create(name: "Mike", age: 33, city: "Denver")
        special1 = comedian.specials.create(title: "title", year: 2018, runtime: 200, image: "https://image.jpg")
        special2 = comedian.specials.create(title: "title2", year: 2017, runtime: 220, image: "https://image2.jpg")
        comedian2 = Comedian.create(name: "Tom", age: 47, city: "San Diego")
        special3 = comedian2.specials.create(title: "title", year: 2018, runtime: 200, image: "https://image.jpg")
        special4 = comedian2.specials.create(title: "title2", year: 2017, runtime: 220, image: "https://image2.jpg")
        comedian3 = Comedian.create(name: "Sally", age: 65, city: "Amarillo")
        special5 = comedian3.specials.create(title: "title", year: 2018, runtime: 200, image: "https://image.jpg")
        special6 = comedian3.specials.create(title: "title2", year: 2017, runtime: 220, image: "https://image2.jpg")

        average_runtime = Special.average_runtime

        expect(average_runtime).to eq(210)
      end
    end
  end
end
