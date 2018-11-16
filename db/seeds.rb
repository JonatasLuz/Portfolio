# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

10.times do |blog|
	Blog.create(
		title:"My blog #{blog}",
		body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
		Suspendisse vel leo mi. Integer eget ullamcorper nibh. Maecenas nec nibh condimentum, aliquet tellus vel, auctor leo. 
		Curabitur libero metus, ornare ac urna et, fermentum fermentum mauris. 
		Nunc commodo vulputate est, non luctus leo imperdiet condimentum. 
		Pellentesque tincidunt nibh sit amet elit scelerisque ultricies. Pellentesque vitae vulputate arcu."
	)
end

5.times do |skill|
	Skill.create(
		title:"Minha skill #{skill}",
		percent_utilized:"5"
	)
end

9.times do |portfolio|
	Portfolio.create(
		title:"Meu portfolio #{portfolio}",
		subtitle:"#{portfolio} portfolio",
		body:"Nullam eu mattis nibh. Nulla lorem augue, venenatis sed lacus eget, pharetra tristique erat. 
		Iteger sit amet lectus risus. Ut id neque a tellus pellentesque commodo. In et vehicula nisi. 
		Praesent eget imperdiet ipsum, ac vulputate quam. Nulla consectetur, massa sed rutrum dapibus, 
		risus diam porttitor ipsum, sed efficitur sapien magna vitae tellus.",
		main_image:"https://via.placeholder.com/600x400",
		thumb_image:"https://via.placeholder.com/300x200"
	)
end