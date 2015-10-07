#Test Data
flatiron_school = School.create(name: "flatiron",street_number: 25,route: "chapel st",city: "Brookyln",state: "NY", zip: 11385, country: "United States", username: "Flatiron_app", password: "password", avatar: "http://findicons.com/files/icons/1072/face_avatars/300/i04.png",description: "We bring together people with diverse perspectives and backgrounds who are passionate about technology—from investment bankers and spinal surgeons to cartoonists and sky-diving instructors. Flatiron School graduates now work as software developers in companies like The New York Times, Kickstarter, Etsy, and Google.",slack_token: "11234", slack_channel: "flatiron_channel")

flatiron_class = Classroom.create(school_id: flatiron_school.id,name:"Bk-03",description:"Brooklyn Campus Fellowship")

blake = Teacher.create(school_id: flatiron_school.id,classroom_id: flatiron_class.id, avatar: "http://findicons.com/files/icons/1072/face_avatars/300/a05.png",firstname: "Blake",lastname: "Johnson",title: "Lead Instructor",email: "Blakejohnson@test.com",username: "BlakeJohnson",blog_url:"https://wordpress.com/",password:"password",blog_title:"BlakeBlog",blog_description:"Blog blog blog")

flatiron_teacher_classroom = TeacherClassroom.create(teacher_id:blake.id,classroom_id:flatiron_class.id)

lewis = Student.create(school_id: flatiron_school.id,classroom_id: flatiron_class.id,avatar: "http://findicons.com/files/icons/1072/face_avatars/300/a05.png",firstname: "Lewis",lastname:"Matos",email: "lewis@test.com",username: "lewismatos",blog_url: "https://wordpress.com/",password:"12342",blog_title: "Lewis Blog",blog_description:"Lewis blog blog blog description")


 blake_post = Post.create(author_id:blake.id,title:"Blake's post",content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. ",created_at:Time.now.strftime("%Y-%m-%d %H:%M:%S"),published: true,published_at:Time.now.strftime("%Y-%m-%d %H:%M:%S"))
 lewis_post = Post.create(author_id:lewis.id,title:"Lewis's post",content:"Curabitur tortor. Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis. Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus, iaculis vel, suscipit quis, luctus non, massa. Fusce ac turpis quis ligula lacinia aliquet. Mauris ipsum. Nulla metus metus, ullamcorper vel, tincidunt sed, euismod in, nibh. Quisque volutpat condimentum velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ",created_at:Time.now.strftime("%Y-%m-%d %H:%M:%S"),published: true,published_at:Time.now.strftime("%Y-%m-%d %H:%M:%S"))

 tag = Tag.create(name:"This is a tag")

 blake_tag = PostTag.create(post_id:blake_post.id,tag_id:tag.id)

lewis_tag = PostTag.create(post_id:lewis_post.id,tag_id:tag.id)


