# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ImageLink.create(url: 'https://pbs.twimg.com/profile_images/378800000577077151/4956a8032dd8549b99463f8501fe88bf_400x400.png', title: 'Thinkful logo', user_id: '2')
ImageLink.create(url: 'http://upload.wikimedia.org/wikipedia/en/thumb/e/e9/Ruby_on_Rails.svg/791px-Ruby_on_Rails.svg.png', title: "Rails logo", user_id:'2')
ImageLink.create(url: 'https://lh6.googleusercontent.com/-NxZGUZXZg6A/AAAAAAAAAAI/AAAAAAAAAAc/QS4oVJL2NgI/photo.jpg', title: "Ruby logo", user_id:'2')

TextPost.create(content: "Rise, my friend. The Death Star will be completed on schedule. You have done well, Lord Vader. And now I sense you wish to continue your search for young Skywalker. Yes, my Master. Patience, my friend. In time he will seek you out. And when he does, you must bring him before me. He has grown strong. Only together can we turn him to the dark side of the Force. As you wish. Everything is proceeding as I have foreseen.", title:"Forcem Ipsum", user_id:'2')
TextPost.create(content: "Good. Use your aggressive feelings, boy! Let the hate flow through you. Obi-Wan has taught you well. I will not fight you, father. You are unwise to lower your defenses. Your thoughts betray you, father. I feel the good in you...the conflict. There is no conflict. You couldn't bring yourself to kill me before, and I don't believe you'll destroy me now. You underestimate the power of the dark side. If you will not fight, then you will meet your destiny. Good. Good.", title:"Forcem Ipsum2", user_id:"2")
