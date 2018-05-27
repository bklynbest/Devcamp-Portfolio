3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",

    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi accumsan mi sed enim blandit molestie. Sed gravida turpis libero, quis hendrerit elit fringilla non. Fusce eget nisi ex. Duis eget odio felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec vehicula auctor purus, quis scelerisque purus molestie lacinia. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec condimentum nisl ut mi mollis, nec eleifend lacus posuere. Duis iaculis dictum lorem quis blandit. Nunc facilisis eu libero eu egestas.

    Sed felis sem, sodales ut scelerisque quis, varius vitae augue. Proin est nisl, convallis id fermentum quis, blandit sit amet orci. Morbi ut elit quis dolor ultrices fringilla quis bibendum augue. Quisque dapibus neque nec ex commodo, non maximus sem tincidunt. Ut quis accumsan nunc. Fusce in sodales nulla. Etiam id aliquam massa. Maecenas ornare ultrices magna. Mauris ornare, sem id luctus imperdiet, turpis arcu feugiat eros, ac euismod eros erat ac lectus. Donec ac consectetur nisi. In tincidunt turpis id justo commodo, eget aliquet nunc facilisis. Pellentesque auctor faucibus justo eu pharetra. Etiam non porttitor leo, feugiat blandit eros. Mauris vestibulum, erat in ornare dapibus, leo diam placerat odio, eu rutrum mi dolor eu lorem. Aliquam hendrerit rutrum sapien eu sollicitudin. Nam vitae blandit turpis.",
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

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}"  ,
    subtitle: "Ruby on Rails",
    body: "Vivamus eu turpis quam. Praesent sed consectetur elit, ac egestas enim. Integer euismod interdum ante, ac viverra arcu eleifend dapibus. Quisque eu laoreet nibh. In et orci non magna aliquam efficitur a nec felis. Aliquam iaculis metus lorem, maximus porta lacus molestie eget. Etiam ut lorem nec dui pellentesque pharetra. Aenean laoreet sapien et sem facilisis tempus. Maecenas non dolor eget magna blandit tempus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent vitae sapien tristique, laoreet lectus vel, ornare nibh." ,
    main_image: "http://via.placeholder.com/600x400" ,
    thumb_image: "http://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}"  ,
    subtitle: "HTML/CSS",
    body: "Vivamus eu turpis quam. Praesent sed consectetur elit, ac egestas enim. Integer euismod interdum ante, ac viverra arcu eleifend dapibus. Quisque eu laoreet nibh. In et orci non magna aliquam efficitur a nec felis. Aliquam iaculis metus lorem, maximus porta lacus molestie eget. Etiam ut lorem nec dui pellentesque pharetra. Aenean laoreet sapien et sem facilisis tempus. Maecenas non dolor eget magna blandit tempus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent vitae sapien tristique, laoreet lectus vel, ornare nibh." ,
    main_image: "http://via.placeholder.com/600x400" ,
    thumb_image: "http://via.placeholder.com/350x200")
  end

  puts "Portfolio item created"

  3.times do |technology|
    Portfolio.last.technolgies.create!(
      name: "Technology #{technology}"
    )
  end

  puts "3 technolgies created"
