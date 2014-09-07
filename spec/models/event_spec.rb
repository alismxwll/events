require 'rails_helper'

describe Event do
  it { should validate_presence_of :name }
  it { should validate_presence_of :time }
  it { should validate_presence_of :place }
end