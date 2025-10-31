# Exercise 5

class LaunchDiscussionWorkflow
 

  def initialize
    @discussion = discussion
    @successful = false
  end

  def run
    return unless valid?
      ActiveRecord::Base.transaction do
        @discussion.save!
        create_discussion_roles!
        @successful = true
      end
  end
end

class EmailParse
  def initialize(email_string)
    @email_string = email_string
  end

  def generate_participants
    return if @email_string.nil? || @email_string.strip.empty?
    emails = []
    @email_string.split.map(&:strip).uniq.each do |email_address|
      emails << email_address
    end
    emails
  end
end

class Users
  def initialize(emails)
    @emails = Array(emails)
  end

  def create_users
    @emails.map do |email|
      User.create(email: email.downcase, password: Devise.friendly_token)
    end
  end
end


participants = "fake1@example.com\nfake2@example.com\nfake3@example.com"
emails = EmailParse.new(participants).generate_participants
users  = Users.new(emails).create_users
discussion = Discussion.new(title: 'fake')

workflow = LaunchDiscussionWorkflow.new(discussion)
workflow.participants = users                       
workflow.run