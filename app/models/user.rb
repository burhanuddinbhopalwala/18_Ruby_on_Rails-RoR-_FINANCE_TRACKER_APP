class User < ApplicationRecord
  has_many :user_stocks 
  has_many :stocks, through: :user_stocks  
  has_many :friendships
  has_many :friends, through: :friendships
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def full_name()
    return "#{first_name} #{last_name}".strip if(first_name || last_name)
    "Anonymous"
  end 

  def stock_already_added?(ticker_symbol)
    stock = Stock.find_by_ticker(ticker_symbol)
    return false unless(stock)
    user_stocks.where(stock_id: stock.id).exists?() 
  end 

  def under_stock_limit?()
    (user_stocks.count <= 10)
  end 

  def can_add_stock?(ticker_symbol)
    (under_stock_limit?() && !stock_already_added?(ticker_symbol))
  end 

  def self.search(param)
    param = param.strip().downcase()
    to_send_back = (first_name_matches(param) + 
    last_match_matches(param) + email_matches(param)).uniq()
    return nil unless(to_send_back)
    to_send_back
  end 

  def self.first_name_matches(param)
    matches("first_name", param)
  end 

  def self.last_match_matches(param)
    matches("last_name", param)
  end

  def self.email_matches(param)
    matches("email", param)
  end 

  def self.matches(field_name, param)
    # Below like statement may change DB wise 
    where("#{field_name} like ?", "%#{param}%")
  end 

  def except_current_user(users)
    users.reject() {|user| user.id == self.id}
  end 

  def not_friends_with?(friend_id)
    friendships.where(friend_id: friend_id).count < 1
  end
end