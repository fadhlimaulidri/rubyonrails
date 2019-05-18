require 'rails_helper'

RSpec.describe AndroidDevice, type: :model do
  describe '#validations' do
    
    it 'should test that the factory is valid' do
      expect(FactoryBot.build :android_device).to be_valid
    end

    it 'should validate the presence of the model' do
      androiddevice = build :android_device, model: ''
      expect(androiddevice).not_to be_valid
      expect(androiddevice.errors.messages[:model ]).to include("can't be blank")
    end

    it 'should validate the presence of the manufacture' do
      androiddevice = build :android_device, manufacture: ''
      expect(androiddevice).not_to be_valid
      expect(androiddevice.errors.messages[:manufacture ]).to include("can't be blank")
    end

    it 'should validate the presence of the reg_id' do
      androiddevice = build :android_device, reg_id: ''
      expect(androiddevice).not_to be_valid
      expect(androiddevice.errors.messages[:reg_id ]).to include("can't be blank")
    end

    it 'should validate uniqueness of the reg id' do
      androiddevice = create :android_device
      invalid_androiddevice = build :android_device, reg_id: androiddevice.reg_id
      expect(invalid_androiddevice).not_to be_valid
    end
  end
end
