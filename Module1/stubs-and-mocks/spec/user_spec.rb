require 'rspec'
require './lib/image_generator'
require './lib/user'

RSpec.describe User do

  before :each do
    @mock_image_generator = instance_double("ImageGenerator", max_image_size: 2)
    @user = User.new("t@gmail.com", @mock_image_generator)
  end

  describe '#initialize' do
    it 'exists' do
      # I pass a real image generator object - this is potentially slow and costly
      # Lets mock this object whenever possible
      expect(@user).to be_a User
    end

    it 'has attributes' do
      #I don't need an actual ImageGenerator object. I use a mock instead.
      # mock_image_generator = instance_double("Image", max_image_size: 45)
      # user = User.new("t@gmail.com", @mock_image_generator)

      expect(@user.email).to eq "t@gmail.com"
      expect(@user.image_generator).to eq @mock_image_generator
      expect(@user.id).to be_between(1, 100000).inclusive
    end
  end

  describe '#change_id_via_user_input' do
    it 'returns :id from get_user_input method' do
      allow(@user).to receive(:get_user_input).and_return 3

      @user.change_id_via_user_input
    
      expect(@user.id).to eq 3
    end
  end

  describe '#get_user_input' do
    it 'should receive an input from console converted into integer' do 
      @user.stub(:gets).and_return('3\n')
      expect(@user.get_user_input).to eql  3
    end
  end

  describe '#add_image_generators' do
    it 'saves one image received as a parameter into @image_history\'s array' do 
      my_image = "image1"

      result = @user.add_image_generators my_image

      expect(result).to eq [my_image]
    end
  end

  describe '#create_images' do
    it 'class #generate_images from @image_processor' do 
     allow(@user.image_generator).to receive(:generate_images).and_return ["image1", "image2"]

     result = @user.create_images

     expect(result).to eq ["image1", "image2"]
    end
  end

  describe '#assign_new_random_image' do
    it 'assigns @profile_image a random image from #random_image, calling #add_image_history' do 
      my_images = ["image1","image2"]  
    
      allow(@user.image_generator).to receive(:generate_images).and_return my_images
  
      @user.assign_new_random_image

      expect(my_images).to include @user.random_image
    end
  end

  describe '#random_image' do
    it 'returns a random image from the @image_generator' do
      my_images = ["image1","image2"]
      allow(@user.image_generator).to receive(:generate_images).and_return(["image1","image2"])

      # Ask for implementation where the explected result is contained inside 'my_images' array,
      expect(my_images).to include @user.random_image
    end
  end
end
