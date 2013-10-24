Genre.destroy_all
Song.destroy_all
Album.destroy_all
Artist.destroy_all
User.destroy_all
Mixtape.destroy_all

g1 = Genre.create(:name => 'Modal Jazz')
g2 = Genre.create(:name => 'Hardcore')
g3 = Genre.create(:name => 'Chamber Pop')

s1 = Song.create(:name => 'Naima')
s2 = Song.create(:name => '23 Beats Off')
s3 = Song.create(:name => 'Expect Delays')

a1 = Artist.create(:name => 'John Coltrane')
a2 = Artist.create(:name => 'Fugazi')
a3 = Artist.create(:name => 'Rachel\'s')

al1 = Album.create(:name => 'Impressions')
al2 = Album.create(:name => 'In On The Killtaker')
al3 = Album.create(:name => 'Systems/Layers')

u1 = User.create(:name => 'Alice')
u2 = User.create(:name => 'Bob')
u3 = User.create(:name => 'Max')

m1 = Mixtape.create(:name => 'Code Jams')
m2 = Mixtape.create(:name => 'Breakfast')
m3 = Mixtape.create(:name => 'Driving')

# Associate artists and songs
a1.songs << s1
a2.songs << s2
a3.songs << s3

# Associate songs and albums
al1.songs << s1
al2.songs << s2
al3.songs << s3

# Associate songs and genres
s1.genres << g1
s2.genres << g2
s3.genres << g3

# Mix some tapes
m1.songs << s1 << s2 << s3
m2.songs << s1 << s2
m3.songs << s3

# Associate users and mixtapes
u1.mixtapes << m1 << m2
u2.mixtapes << m3
