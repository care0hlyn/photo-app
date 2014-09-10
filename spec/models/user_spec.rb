describe User do

  it { should validate_presence_of :name }
  it { should validate_presence_of :password }

  it { should validate_presence_of :password_confirmation }
  it { should validate_uniqueness_of :email }

  it { should have_many :photos }
  it { should have_many :tags }

end
