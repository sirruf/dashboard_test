module DeviseMacros
  def login_user
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = User.create(email: 'user1@example.com',
                         password: SecureRandom.alphanumeric(10))
      sign_in user
    end
  end
end
