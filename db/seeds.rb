# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.delete_all

Genre.create(name: "African", categories: ["afrobeat"], has_lyrics: false)
Genre.create(name: "Asian", categories: ["cantopop", "k-pop", "mandopop", "philippines-opm"], has_lyrics: false)
Genre.create(name: "Blues", categories: ["blues"])
Genre.create(name: "Brazilian", categories: ["bossanova", "mpb", "pagode", "samba", "sertanejo"], has_lyrics: false)
Genre.create(name: "Country", categories: ["country"])
Genre.create(name: "Classical", categories: ["classical", "opera"], has_lyrics: false)
Genre.create(name: "Dubstep", categories: ["dub", "dubstep", "post-dubstep"], has_lyrics: false)
Genre.create(name: "Easy-Listening", categories: ["acoustic", "chill", "new-age", "sleep", "piano"], has_lyrics: false)
Genre.create(name: "Electronic", categories: ["ambient", "dance", "electronic", "house", "trance"], has_lyrics: false)
Genre.create(name: "European", categories: ["british", "french", "german", "spanish", "swedish"], has_lyrics: false)
Genre.create(name: "Folk", categories: ["folk", "singer-songwriter"])
Genre.create(name: "Hip-hop", categories: ["hip-hop"])
Genre.create(name: "House", categories: ["chicago-house", "deep-house", "house", "progressive-house"])
Genre.create(name: "Indie", categories: ["indie", "indie-pop"])
Genre.create(name: "Japanese", categories: ["j-dance", "j-pop", "j-rock"], has_lyrics: false)
Genre.create(name: "Latin", categories: ["latin", "latino", "spanish", "salsa", "samba"], has_lyrics: false)
Genre.create(name: "Metal", categories: ["black-metal", "death-metal", "heavy-metal", "metal", "metal-misc"])
Genre.create(name: "Middle Eastern", categories: ["iranian", "turkish"], has_lyrics: false)
Genre.create(name: "Pop", categories: ["singer-songwriter", "dance", "indie-pop", "pop", "power-pop"])
Genre.create(name: "Punk", categories: ["punk", "punk-rock"])
Genre.create(name: "Reggae", categories: ["reggae", "reggaeton"])
Genre.create(name: "Rock", categories: ["alternative", "rock", "rock-n-roll", "indie", "hard-rock"])
Genre.create(name: "South American", categories: ["brazil", "latin", "latino", "salsa", "samba"], has_lyrics: false)
Genre.create(name: "Techno", categories: ["detroit-techno", "minimal-techo", "techno"], has_lyrics: false)
Genre.create(name: "Teens", categories: ["children", "disney"])
Genre.create(name: "Upbeat", categories: ["happy", "work-out"])
