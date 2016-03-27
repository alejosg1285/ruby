class User < ActiveRecord::Base
  #Validar que el nombre de usuario no sea nulo.
  validates :name, presence: true
  #Agregar seguidores a usuarios.
  has_many :subscriptions, foreign_key: :follower_id, dependent: :destroy
  has_many :leaders, through: :subscriptions
  #Consultar seguidores de usuarios.
  has_many :reverse_subscription, foreign_key: :leader_id, class_name: 'Subscription', dependent: :destroy
  has_many :followers, through: :reverse_subscription

  has_many :posts
  has_many :text_posts
  has_many :image_posts

  has_many :likes, foreign_key: :user_id, foreign_key: :post_id, dependent: :destroy

  def following?(leader)
    leaders.include? leader
  end

  def follow!(leader)
    if leader != self and !following?(leader)
      leaders << leader
    end
  end

  def give_like!(post)
    unless likes.include? post
      likes << post
    end
  end
end
