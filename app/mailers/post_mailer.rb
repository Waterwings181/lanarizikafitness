class PostMailer < ApplicationMailer
    def new_post_email(email, post)
        @email = email
        @post = post
        mail(to: @email, subject: "New Post: #{post.title}")
    end
end
