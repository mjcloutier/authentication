class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable, :timeoutable

  attr_accessor :set_to_role_ids

  validates :name, :username, presence: true

  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, multiline: true

  alias_attribute :username, :login
  alias_attribute :encrypted_password, :crypted_password
  alias_attribute :encrypted_password_changed?, :crypted_password_changed?
end
