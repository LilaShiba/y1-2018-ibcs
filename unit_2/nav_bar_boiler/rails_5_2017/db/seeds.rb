3.times do |topic|
	Topic.create!(
		title: "Topic #{}"
		)
end

puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title:"Number #{blog}",
		body: 
		"It is a long established fact that a reader 
		will be distracted by the readable content of a 
		page when looking at its layout. The point of 
		using Lorem Ipsum is that it has a more-or-less 
		normal distribution of letters, as opposed to 
		using 'Content here, content here', making it 
		look like readable English. Many desktop 
		publishing packages and web page editors now use 
		Lorem Ipsum as their default model text, and a 
		search for 'lorem ipsum' will uncover many web 
		sites still in their infancy. Various versions 
		have evolved over the years, sometimes by 
		accident, sometimes on purpose (injected humour 
		and the like).",
		topic_id: Topic.last.id 
		)
end
puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15

		)
end

puts "5 skill posts created"



8.times do |portfolio|
	Portfolio.create!(
		title: "portfolio #{portfolio}",
		subtitle: "Ruby on Rails",
		body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
		)
end

1.times do |portfolio|
	Portfolio.create!(
		title: "portfolio #{portfolio}",
		subtitle: "Angular",
		body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
		)
end

puts "10 blog posts created"