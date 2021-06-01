require 'rspec'
require './lib/image_generator'

RSpec.describe ImageGenerator do

  before :each do
    @image_generator = ImageGenerator.new(2500)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@image_generator).to be_a ImageGenerator
    end

    it 'has attributes' do
      expect(@image_generator.max_image_size).to eq 2500
    end

    # Using stubs write the tests to confirm the functionality
    # that exists in ./lib/image_generator.rb
  end

  describe 'generate_images' do
    it 'generates images' do
      random_number = rand(2500)
      images = (0..random_number).to_a.map { |num| "image#{num}" }

      allow(@image_generator).to receive(:generate_images).and_return(images: images)
    end
  end

  describe 'change_max_size' do
    it 'changes max_image_size' do
      num = 3

      max_image_size = (num * rand(2500))

      allow(@image_generator).to receive(:change_max_size).with(num).and_return(max_image_size: max_image_size)
      allow(@image_generator).to receive(:max_image_size).and_return(max_image_size)
    end
  end
end
