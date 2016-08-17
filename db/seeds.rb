jay = User.create(
  email: 'jay@example.com',
  first_name: 'Jay',
  last_name: 'Morlan',
  password: '1234',
  password_confirmation: '1234')

cris = User.create(
  email: 'cris@example.com',
  first_name: 'cris',
  last_name: 'Joya',
  password: '1234',
  password_confirmation: '1234')

doug = User.create(
  email: 'doug@example.com',
  first_name: 'doug',
  last_name: 'Drahem',
  password: '1234',
  password_confirmation: '1234')


iron_yard = Team.create(name: "The Iron Yard", description: " The Best! Enough said!")
station = Team.create(name: "Houston Staion", description: "No Idea")

rails = Channel.create(name: "Houston Rails", description: "Great", team: iron_yard)
javascript = Channel.create(name: "Houston Javascript", description: "meh!", team: iron_yard)
innovation = Channel.create(name: "Innovation!", description: "No Doug Allowed!", team: station)

iron_yard.users << [jay, cris, doug]
station.users << jay

rails.users << [jay, cris, doug]
javascript.users << [jay]
innovation.users << [jay, cris]
