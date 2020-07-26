describe "sample", type: :feature do
  it "has links" do 
    expect(all('a').each { |a| a[:href] })
  end
end