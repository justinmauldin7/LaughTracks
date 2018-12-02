RSpec.describe Comedian do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end

    describe 'class methods' do
      it 'has average age' do
        comedian = Comedian.create(name: "Mike", age: 33, city: "Denver")
        comedian2 = Comedian.create(name: "Tom", age: 47, city: "San Diego")
        comedian3 = Comedian.create(name: "Sally", age: 65, city: "Amarillo")

        average_age = Comedian.average_age

        expect(average_age).to eq(48)
      end

      it 'has unique hometowns' do
        comedian = Comedian.create(name: "Mike", age: 33, city: "Denver")
        comedian2 = Comedian.create(name: "Tom", age: 47, city: "San Diego")
        comedian3 = Comedian.create(name: "Sally", age: 65, city: "Amarillo")

        hometowns = Comedian.unique_hometowns

        expect(hometowns).to eq(['Denver', 'San Diego', 'Amarillo'].reverse)
      end

      it 'sorts based on parameters' do
        skip
        comedian = Comedian.create(name: "Mike", age: 33, city: "Denver")
        comedian2 = Comedian.create(name: "Tom", age: 47, city: "San Diego")
        comedian3 = Comedian.create(name: "Sally", age: 65, city: "Amarillo")

        sort1 = Comedian.sorter(33)
        sort2 = Comedian.sorter(30)

        expect(sort2).to eq([comedian])
        expect(sort3).to eq([])
      end
    end
  end
end
