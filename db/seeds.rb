# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Post.destroy_all

User.create(:name => 'Joan Miro', :email => 'foo@bar.com', :avatar => 'http://upload.wikimedia.org/wikipedia/commons/5/5c/Portrait_of_Joan_Miro%2C_Barcelona_1935_June_13.jpg', :body => 'Lorem ipsum dolor sit amet, est ei rebum inani tempor, no pro adhuc movet. Ea vim solet dictas offendit, nam dolorem invenire at.')
User.create(:name => 'William Shakespeare', :email => 'foo@bar.com', :avatar => 'http://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Shakespeare.jpg/640px-Shakespeare.jpg', :body => 'Lorem ipsum dolor sit amet, est ei rebum inani tempor, no pro adhuc movet. Ea vim solet dictas offendit, nam dolorem invenire at.')


Post.create(:title => 'The Flight of the Dragonfly in Front of the Sun', :body => 'Lorem ipsum dolor sit amet, est ei rebum inani tempor, no pro adhuc movet. Ea vim solet dictas offendit, nam dolorem invenire at. Est et inermis repudiare, eu quo phaedrum constituam, quo quodsi causae deleniti in. Ne omnes decore delicatissimi his, ei regione appetere has. An audire nostrum nec, ne graeci mnesarchum sententiae sed, nec ex principes imperdiet. Mazim graeco lucilius ad vix.', :image => 'http://uploads0.wikipaintings.org/images/joan-miro/the-flight-of-the-dragonfly-in-front-of-the-sun.jpg')
