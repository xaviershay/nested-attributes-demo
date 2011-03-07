module FormHelper
  def setup_user(user)
    user.address ||= Address.new
    (Interest.all - user.interests).each do |interest|
      user.interest_users.build(:interest => interest)
    end
    user.interest_users.sort_by! {|x| x.interest.name }

    3.times { user.tasks.build }

    user
  end
end
