require 'spec_helper'

describe 'deleting requests' do
	it 'removes the request' do
		create(:request)

		visit '/requests'
		click_link 'Delete'

		expect(page).to have_content 'Request deleted'
	end
end

	describe 'attempting to delete posts' do 
		before { create(:request)} 
		xit 'not logged in' do
			visit '/requests'
			click_link 'Delete'

			expect(page).to have_content 'Sign in'
		end
	end

# describe 'deleting posts in mock omniauth' do
# 	before { set_omniauth }

# 	context 'student is logged out' do
# 		describe 'attempting to delete requests' do
# 			it 'tells you to log in' do
# 				create(:request, user: student)

# 				expect(page).to have_content 'fuck'
# 			end
# 		end
# 	end
# end

# context 'logged in as Sarah' do
# 	let(:sarah) { create(:sarah) }

# 	before do
# 		login_as sarah
# 	end

# 	describe "attempting to delete Alex's post" do

# 		it 'displays an error' do
# 			alex = create(:alex)
# 			create(:post, user: alex)

# 			visit '/posts'
# 			expect(page).not_to have_link 'Delete'	
# 		end
# 	end
	
#  	describe 'deleting my own post' do 
	
# 		it 'removes the post' do
# 			create(:post, user: sarah)

# 			visit '/posts'
# 			click_link 'Delete'
# 			expect(page).to have_content 'successfully deleted'
# 			expect(page).not_to have_content 'cool pic'
# 		end
# 	end
# 	end
