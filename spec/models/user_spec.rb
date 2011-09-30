require 'spec_helper'

describe User do
  context 'Deleting a user' do
    before(:each) do
      @user = Factory(:user)
      Factory(:entry, :user_id => @user.id)
      @user.save
      User.all.should have(1).record
      @user.deleted_at.should be_nil
      @user.mark_as_deleted
    end

    it 'should deactivate the user instead of deleting it' do
      @user.deleted_at.should_not be_nil
    end

    it 'should not be selected' do
      User.all.should have(:no).records
    end

    it 'should also deactivate the user\'s entries' do
      @user.entries.each do |entry|
        entry.deleted_at.should_not be_nil
      end
    end
  end
end
