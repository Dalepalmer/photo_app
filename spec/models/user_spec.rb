require 'rails_helper'
# RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe User do
    it { should validate_presence_of :email}
    it { should validate_presence_of :password}
    it { should validate_presence_of :password_confirmation}
    it { should have_many :photos}

end
