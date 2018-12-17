p 'start'

######################################################################################################
# clean up
######################################################################################################

Application.destroy_all
Applicant.destroy_all
ChronicleItem.destroy_all
ChronicleItemSkill.destroy_all
Image.destroy_all
Address.destroy_all
Website.destroy_all
Information.destroy_all
Skill.destroy_all



######################################################################################################
# applicants
######################################################################################################

applicant = Applicant.new(
  birthday: '18-07-1986',
  email: 'heiko.beineke@gmail.com',
  mobile_phone: '0151 555 45 345',
)
I18n.locale = :de
applicant.slogan = 'Spielkind, Entdecker, Verwirklicher'
applicant.family_status = 'verheiratet'
I18n.locale = :en
applicant.slogan = "Gamer, Explorer, Accomplisher"
applicant.family_status = 'married'
applicant.save

Image.create!(
  title: 'Spielkind',
  description: 'Deine Wahrnehmung bestimmt deine Realität. - Qui-Gon Jinn',
  url: 'https://lh3.googleusercontent.com/od38D9f-2xAOqJLRioBJrJanGF1Gc2QdJk6tQdHfcF9-X33fRIFYvMdWOq9DPpVgxr17_sEgg2biFuydIjYVCjDx9qvZd7X3lkIDxgntDiIUbnwjdit0GXYq4wIk3R4pO7snWlej2eFbmElx7A7t7GjNIO4ku1fu_t6myeRfoDN1xRgQHqf6uWi3_V7vMU6kcGBNxXqH1SpujCWlpcip3k6MPlggsGHL4sO8StggUbJvIcJ-lkACkUa-bVFYcU7OzdWGYUpu12FsqXLbiFqRBnYQ5qkoers97ybnbpsKhATH1aTY60P_hlu8I5bbRjeZ_RkWHQGdTTDqQC5R5KbSyF8vbQ6uw1-t0e2LIS8BBtlB2Q7rQA1ROiznQsvut4X6_5ppRAU1SkHFrE6B_-fMOvbr5tkuPxkwX_QBt3uL7CvmiAmd_xrYVRDl2IMyP_f9JmfwWMv0A9VmH6JGmW39t-THr0dKcRRcFkXWYGL1i8mn2WMMzabt0YTXdCozRWHdQWATg5wMFo_5otz6AVyYYW1occwmbPSe-hXAL4V0Q9OfU3tQUaGEkv20oGKXTkK6NZkcukX2qcFVCnXrxSGY7eSFA7v40kLNWzNcs4AWd_3C5TwFPzW7=w430-h700-no',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Image.create(
  title: 'Entdecker',
  description: "Ich habe keine besondere Begabung, sondern bin nur leidenschaftlich neugierig. - Albert Einstein",
  url: 'https://lh3.googleusercontent.com/OXCfHXC1jCIKW3cYB1-6yOT18gdj1MgMszN5-HMEeim-4t9ONm8kjmOAvEgJTbYQ5OoJe-PN-BObdI-2pGPiycKSaKZBs2SmUgdM6dDysXWr0Zw4iZgHyUyGM0G0N0GVRdRYUpnzoRQS1zBaMq9EzDgy5hLJwnCajLdDYkFXuZlk_iCIc_R5oAE1Uny1C5-YZ4P_8YPfHX_DtNdxZqPR8KlqcuP9WYzY3bxdoXJVWnNmxO9YSJMD6SXJtiTfPSc4TZzaKL9858ZtVzSNvP8439xsWjB4EXs2I5CRHzxCBhiVWX0-04rt0CpvvRNNlnz1iDgBR0T4_1kca-ltrt_grkXfYq4gIeeesuGafIK7a0K27bDoBUO5Rnq5RD6-M9JYA9ka3VRYj3QdJLBApamHfl7Ol_T0ISCZ88lsBNC_Fg3bon9qnjpjScZw4j7j4LifZstMOolVqKSzsx3yyjfllQtYCEo_gEEq7GI-AB_T635R_4vN043CYZuNmUIkN01dy9_JyJ2d61FNzuSE_CrGhf3AiV9huLBH8BDRUwEQOhJczXesdIWdWigOiFTozBqVrhLT9Wlzfp0VuOo__YW36OqHKWM6Ym2cLLobLzcmOUEfw18rFBB4=w430-h700-no',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Image.create(
  title: 'Verwirklicher',
  description: 'Wer immer tut, was er schon kann, bleibt immer das, was er schon ist. - Henry Ford',
  url: 'https://lh3.googleusercontent.com/QJWnWquJx91n3EFGs24RuWw-ZvpOalqMLeS2j4AbNk5MwANXCVvjhk78UyjhXMtog9ILSDJSvgqbU3bnRnlVStVhs_bmv_tpozVOvgiTDuxuMZKoFlL6sRdK6Fjwo7tX7_IxlZJ2FppB4CYDlDceGcDxt7OIqfuD-R0qVjU73EhIaZLk3Vgn6Sh-fYI3oQEaSKfcfPyV3zNn15d-ZcfdY00vz6pAD48QTJTlM_RuftOuKnKVIDXHjurM-ovvVY_sRZUDLdxaCVBhBJQPGvWZefYTHkbwwXhT9J7vb12tyrC6N6H8VrX6Dn_P5IgRaQEhfdnUUZy6coMl0FdPDDrA7_l2awHsDe68g1CHBoTwIpd12lN-OE-a6-K8RfnKGb_ZxIDANvdFJmGF73BOmawspsaU44lh7dp-nsl-h7m_KmhUTut4123slakzK9kb1EBvTLWrmWl8ZUPLe_V-qpjnbneCOhr18umkxtHqH0j-sIFDcs9xsKcBBnNvkSzVzeE9iVtCr0aw8kO5tDm5rirLxxQQBlJ8E_-jURMad8rJCe9gPoG_FTvNl-C12gEreg3hmyTS=w430-h700-no',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)

Address.create(
  person: 'Heiko Beineke',
  street: 'Weststr. 1',
  zip: '48565',
  city: 'Steinfurt',
  addressable_id: applicant.id,
  addressable_type: applicant.model_name
)

Website.create(
  title: 'GitHub',
  url: 'https://github.com/HBeineke',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Website.create(
  title: 'XING',
  url: 'https://www.xing.com/profile/Heiko_Beineke',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Website.create(
  title: 'Code School',
  url: 'https://www.codeschool.com/users/405180',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Website.create(
  title: 'Homepage',
  url: 'https://hb-curriculum-vitae.herokuapp.com/',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)



######################################################################################################
# skills
######################################################################################################

# area
Skill.create(title: 'Projektmanagement', information_type: :area)
Skill.create(title: 'Prozessoptimierung', information_type: :area)
Skill.create(title: 'Softwarequalität', information_type: :area, top: true)
Skill.create(title: 'Software Engineering', information_type: :area)
Skill.create(title: 'Web Engineering', information_type: :area)
Skill.create(title: 'Frontend Development', information_type: :area, top: true)
Skill.create(title: 'Backend Development', information_type: :area, top: true)
Skill.create(title: 'Usability', information_type: :area, top: true)
Skill.create(title: 'Mobile Optimierung', information_type: :area)

# conditions
Skill.create(title: 'Testing', information_type: :conditions, top: true)
Skill.create(title: 'Error Tracking', information_type: :conditions)
Skill.create(title: 'Test Driven', information_type: :conditions)
Skill.create(title: 'Code Reviews', information_type: :conditions, top: true)
Skill.create(title: 'MVC', information_type: :conditions)
Skill.create(title: 'REST', information_type: :conditions)
Skill.create(title: 'Webservices', information_type: :conditions)
Skill.create(title: 'Microservices', information_type: :conditions, top: true)
Skill.create(title: 'Heterogene Systemlandschaften', information_type: :conditions)
Skill.create(title: 'KVP', information_type: :conditions)
Skill.create(title: 'Agil', information_type: :conditions, top: true)
Skill.create(title: 'Kanban', information_type: :conditions)
Skill.create(title: 'Scrum', information_type: :conditions, top: true)
Skill.create(title: 'Lean Startup', information_type: :conditions, top: true)

# technology
Skill.create(title: 'Assembler', information_type: :technology)
Skill.create(title: 'Visual Basic', information_type: :technology)
Skill.create(title: 'C', information_type: :technology)
Skill.create(title: 'C#', information_type: :technology)
Skill.create(title: 'Java', information_type: :technology)
Skill.create(title: 'PHP', information_type: :technology)
Skill.create(title: 'Zend Framework', information_type: :technology)
Skill.create(title: 'Ruby', information_type: :technology, top: true)
Skill.create(title: 'Ruby on Rails', information_type: :technology, top: true)
Skill.create(title: 'RSpec', information_type: :technology)
Skill.create(title: 'Capybara', information_type: :technology)
Skill.create(title: 'Python', information_type: :technology, top: true)
Skill.create(title: 'Django', information_type: :technology, top: true)
Skill.create(title: 'SQL', information_type: :technology)
Skill.create(title: 'Oracle', information_type: :technology)
Skill.create(title: 'MySQL', information_type: :technology)
Skill.create(title: 'PostgreSQL', information_type: :technology)
Skill.create(title: 'HTML5', information_type: :technology, top: true)
Skill.create(title: 'Haml', information_type: :technology)
Skill.create(title: 'CSS3', information_type: :technology, top: true)
Skill.create(title: 'Sass', information_type: :technology, top: true)
Skill.create(title: 'Bootstrap', information_type: :technology)
Skill.create(title: 'Bulma', information_type: :technology)
Skill.create(title: 'Tailwind CSS', information_type: :technology)
Skill.create(title: 'JavaScript', information_type: :technology, top: true)
Skill.create(title: 'Vue', information_type: :technology, top: true)
Skill.create(title: 'Storybook', information_type: :technology)
Skill.create(title: 'CoffeeScript', information_type: :technology)
Skill.create(title: 'jQuery', information_type: :technology, top: true)
Skill.create(title: 'AngularJS', information_type: :technology)
Skill.create(title: 'Highcharts', information_type: :technology)
Skill.create(title: 'Ajax', information_type: :technology)
Skill.create(title: 'AMQP', information_type: :technology)
Skill.create(title: 'JSON', information_type: :technology)
Skill.create(title: 'XML', information_type: :technology)
Skill.create(title: 'BPMN 2.0', information_type: :technology)
Skill.create(title: 'UML', information_type: :technology)

# software
Skill.create(title: 'Windows', information_type: :software)
Skill.create(title: 'Ubuntu', information_type: :software, top: true)
Skill.create(title: 'Mac OS', information_type: :software, top: true)
Skill.create(title: 'SVN', information_type: :software)
Skill.create(title: 'git', information_type: :software, top: true)
Skill.create(title: 'GitHub', information_type: :software, top: true)
Skill.create(title: 'Bitbucket', information_type: :software)
Skill.create(title: 'GitLab', information_type: :software)
Skill.create(title: 'Git Tower', information_type: :software)
Skill.create(title: 'SourceTree', information_type: :software)
Skill.create(title: 'GitKraken', information_type: :software)
Skill.create(title: 'DiffMerge', information_type: :software)
Skill.create(title: 'Visual Studio', information_type: :software)
Skill.create(title: 'Eclipse', information_type: :software)
Skill.create(title: 'Sublime Text', information_type: :software)
Skill.create(title: 'Atom', information_type: :software)
Skill.create(title: 'PyCharm', information_type: :software)
Skill.create(title: 'Visual Studio Code', information_type: :software)
Skill.create(title: 'Jira', information_type: :software, top: true)
Skill.create(title: 'Basecamp', information_type: :software)
Skill.create(title: 'Redmine', information_type: :software)
Skill.create(title: 'Trello', information_type: :software)
Skill.create(title: 'RabbitMQ', information_type: :software)
Skill.create(title: 'Travis CI', information_type: :software)
Skill.create(title: 'Jenkins', information_type: :software)
Skill.create(title: 'Airbrake', information_type: :software)
Skill.create(title: 'Errbit', information_type: :software)
Skill.create(title: 'Heroku', information_type: :software)
Skill.create(title: 'Camtasia Studio', information_type: :software)
Skill.create(title: 'GIMP', information_type: :software, top: true)
Skill.create(title: 'Office', information_type: :software)
Skill.create(title: 'Google Tools', information_type: :software)



######################################################################################################
# chronicle
######################################################################################################

address = Address.create(
  zip: '48653',
  city: 'Coesfeld'
)
Highlight.create(
  started_at: '18-07-1986',
  ended_at: nil,
  title: 'Meine Geburt',
  description: nil,
  badge: 'birthday-cake',
  applicant: applicant,
  address: address
)


######################################################################################################


school = Address.create(
  name: 'KVG Gesamtschule Nordwalde',
  street: 'Amtmann-Daniel-Straße 30',
  zip: '48356',
  city: 'Nordwalde'
)
ci = Education.create(
  started_at: '01-08-1997',
  ended_at: '01-07-2003',
  title: 'Realschule',
  badge: 'book',
  graduation: 'Fachoberschulreife',
  applicant: applicant,
  address: school
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :regular)


######################################################################################################


school = Address.create(
  name: 'Wirtschaftsschulen des Kreises Steinfurt',
  street: 'Bahnhofstraße 28',
  zip: '48565',
  city: 'Steinfurt'
)
ci = Education.create(
  started_at: '01-08-2003',
  ended_at: '01-06-2005',
  title: 'Höhere Handelsschule',
  badge: 'book',
  graduation: 'Fachhochschulreife (Wirtschaft)',
  applicant: applicant,
  address: school,
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Visual Basic').id, experience: :rare)


######################################################################################################


Highlight.create(
  started_at: '22-02-2004',
  ended_at: nil,
  title: 'Meine heutige Frau kennengelernt',
  description: nil,
  badge: 'heart',
  applicant: applicant
)


######################################################################################################


Highlight.create(
  started_at: '01-10-2006',
  ended_at: nil,
  title: 'Führerschein Klasse B',
  description: nil,
  badge: 'car',
  applicant: applicant
)


######################################################################################################


school = Address.create(
  name: 'Technische Schulen des Kreises Steinfurt',
  street: 'Liedekerker Str. 84',
  zip: '48565',
  city: 'Steinfurt'
)
ci = Education.create(
  started_at: '01-08-2005',
  ended_at: '01-07-2008',
  title: 'Informationstechnischer Assistent',
  description: 'Abschluss als Jahrgangsbester',
  badge: 'book',
  graduation: 'Fachhochschulreife (Informatik)',
  applicant: applicant,
  address: school
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'C').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PHP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Assembler').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'C#').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Java').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Visual Studio').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Eclipse').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Camtasia Studio').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'UML').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MySQL').id, experience: :rare)


######################################################################################################


Highlight.create(
  started_at: '01-03-2002',
  ended_at: '01-09-2009',
  title: 'Verschiedene Aushilfsjobs',
  description: 'Martin Oelrich GmbH & Co. KG (Wagenwäscher);Emsdettener Fahrradkurier (Briefzusteller);Movie and More - Videothek (Verkäufer);Biobauernhof (Mädchen für alles) ;Hermes Logistik Gruppe Deutschland (Paketzusteller);crashtest-service.com GmbH (Datenaufbereitung)',
  badge: 'money-bill-alt',
  applicant: applicant
)


######################################################################################################


school = Address.create(
  name: 'Fachhochschule Münster',
  street: 'Bismarckstraße 11',
  zip: '48565',
  city: 'Steinfurt',
  website: Website.create(url: 'https://www.fh-muenster.de/fb2/index.php' )
)

ci = Education.create(
  started_at: '01-10-2008',
  ended_at: '01-07-2010',
  title: 'Angewandte Informatik',
  badge: 'graduation-cap',
  graduation: nil,
  applicant: applicant,
  address: school
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'C').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Java').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Eclipse').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SVN').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'UML').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Software Engineering').id, experience: :regular)


######################################################################################################


company = Address.create(
  name: 'Fachhochschule Münster',
  street: 'Corrensstraße 25',
  zip: '48149',
  city: 'Münster',
  website: Website.create(url: 'https://www.fh-muenster.de/fb9/index.php' )
)
ci = Job.create(
  started_at: '01-12-2010',
  ended_at: '01-02-2011',
  title: 'Web Developer',
  description: 'Pflege und Weiterentwicklung der Website',
  employment: :student_assistant,
  position: :web_developer,
  badge: 'code',
  applicant: applicant,
  address: company,
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PHP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)


######################################################################################################


company = Address.create(
  name: 'zeb/rolfes.schierenbeck.associates GmbH',
  street: 'Hammer Str. 165',
  zip: '48153',
  city: 'Münster',
  website: Website.create(url: 'http://www.zeb.de/' )
)
ci = Job.create(
  started_at: '01-04-2009',
  ended_at: '01-07-2011',
  title: 'Web Developer',
  description: 'Pflege und Weiterentwicklung eines Prototypen im Team',
  employment: :student_assistant,
  position: :web_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company,
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SVN').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Jira').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id , experience: :rare)


######################################################################################################


address = Address.create(
  street: 'Theodor-Heuss-Str. 8',
  zip: '48341',
  city: 'Altenberge'
)
Highlight.create(
  started_at: '22-04-2011',
  ended_at: '22-09-2014',
  title: 'Erste gemeinsame Wohnung',
  badge: 'home',
  applicant: applicant,
  address: address
)


######################################################################################################


company = Address.create(
  name: 'gloud GmbH',
  street: 'Hafenstraße 29- 31',
  zip: '48153',
  city: 'Münster',
  website: Website.create(url: 'http://gloud.de/')
)
ci = Job.create(
  started_at: '01-01-2012',
  ended_at: '01-07-2012',
  title: 'Web Developer',
  description: 'Pflege und Weiterentwicklung eines Prototypen im Team',
  employment: :student_assistant,
  position: :web_developer,
  badge: 'code',
  applicant: applicant,
  address: company
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PHP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Zend Framework').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Highcharts').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id , experience: :frequent)


######################################################################################################


company = Address.create(
  name: 'Fachhochschule Münster',
  street: 'Corrensstraße 25',
  zip: '48149',
  city: 'Münster',
  website: Website.create(url: 'https://www.fh-muenster.de/wirtschaftsinformatik/index.php')
)
ci = Job.create(
  started_at: '01-07-2012',
  ended_at: '01-09-2012',
  title: 'Web Developer',
  description: 'Entwurf und Umsetzung einer Anwendung für die Hochschulverwaltung im Team',
  employment: :intern,
  position: :web_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Prozessoptimierung').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id , experience: :frequent)


######################################################################################################


Highlight.create(
  started_at: '22-02-2013',
  ended_at: nil,
  title: 'Meine heutige Frau geheiratet',
  description: nil,
  badge: 'heart',
  applicant: applicant
)


######################################################################################################


company = Address.create(
  name: 'COMPEON GmbH',
  street: 'Kirchstraße 6',
  zip: '48282',
  city: 'Emsdetten',
  website: Website.create(url: 'https://www.compeon.de')
)
ci = Job.create(
  started_at: '01-03-2013',
  ended_at: '01-09-2013',
  title: 'Web Developer',
  description: 'Pflege und Weiterentwicklung des Online-Finanzportals COMPEON im Team;Bachelorarbeit: Konzeption, Implementierung und Evaluation einer webbasierten Anwendung zur Erfassung der Kundenzufriedenheit und zur Publikation von Kundenempfehlungen im Rahmen des Online-Finanzportals COMPEON ',
  employment: :bachelor,
  position: :web_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company,
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Git Tower').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'AngularJS').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Kanban').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Travis CI').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Error Tracking').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Airbrake').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Basecamp').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Heroku').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PostgreSQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'KVP').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Lean Startup').id, experience: :frequent)


######################################################################################################


school = Address.create(
  name: 'Fachhochschule Münster',
  street: 'Corrensstraße 25',
  zip: '48149',
  city: 'Münster',
  website: Website.create(url: 'https://www.fh-muenster.de/wirtschaftsinformatik/index.php')
)
ci = Education.create(
  started_at: '01-10-2010',
  ended_at: '01-09-2013',
  title: 'Wirtschaftsinformatik',
  badge: 'graduation-cap',
  graduation: 'Bachelor of Science',
  top: true,
  applicant: applicant,
  address: school,
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Prozessoptimierung').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Software Engineering').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Java').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PHP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Eclipse').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'UML').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'XML').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MySQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PostgreSQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SQL').id, experience: :regular)


######################################################################################################


company = Address.create(
  name: 'Fuchs Gewürze GmbH',
  street: 'Industriestraße 25',
  zip: '49201',
  city: 'Dissen a.T.W.',
  website: Website.create(url: 'http://www.fuchs.de/')
)
ci = Job.create(
  started_at: '01-12-2013',
  ended_at: '01-06-2014',
  title: 'Junior Software Developer',
  description: 'Entwurf und Umsetzung individueller ERP-Anwendungen im Team; Entwicklung von API-Schnittstellen zur Integration verteilter Systeme;Pflege und Weiterentwicklung bestehender ERP-Anwendungen;',
  employment: :employee,
  position: :junior_software_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Prozessoptimierung').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'REST').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bootstrap').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Redmine').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Mac OS').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Software Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Kanban').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Error Tracking').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'AMQP').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RabbitMQ').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'XML').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Errbit').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Oracle').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Git Tower').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'DiffMerge').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'KVP').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Microservices').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Webservices').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Heterogene Systemlandschaften').id, experience: :frequent)


######################################################################################################


company = Address.create(
  name: 'deltacity.NET GmbH & Co. KG',
  street: 'Spatzenweg 2',
  zip: '48282',
  city: 'Emsdetten',
  website: Website.create(url: 'http://www.deltacity.net/')
)
ci = Job.create(
  started_at: '01-6-2014',
  ended_at: '01-09-2014',
  title: 'Web Developer',
  description: 'Entwurf und Umsetzung einer individuellen CMS-Lösung',
  employment: :employee,
  position: :web_developer,
  badge: 'code',
  applicant: applicant,
  address: company
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Redmine').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Mac OS').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SourceTree').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MySQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'DiffMerge').id, experience: :regular)


######################################################################################################


address = Address.create(
  street: 'Weststr. 1',
  zip: '48565',
  city: 'Steinfurt'
)
Highlight.create(
  started_at: '22-10-2014',
  ended_at: nil,
  title: 'Umzug in eine größere Wohnung',
  badge: 'home',
  applicant: applicant,
  address: address
)


######################################################################################################


address = Address.create(
  name: 'TV Borghorst 1884 e.V.',
  street: 'Winkelstraße 22',
  zip: '48565',
  city: 'Steinfurt',
  website: Website.create(url: 'http://www.tv-borghorst.de/')
)
Highlight.create(
  started_at: '22-04-2010',
  ended_at: '22-07-2015',
  title: 'Kung Fu Training',
  description: nil,
  badge: 'hand-rock',
  applicant: applicant,
  address: address
)


######################################################################################################


company = Address.create(
  name: 'Fuchs Gewürze GmbH',
  street: 'Industriestraße 25',
  zip: '49201',
  city: 'Dissen a.T.W.',
  website: Website.create(url: 'http://www.fuchs.de/')
)
ci = Job.create(
  started_at: '01-10-2014',
  ended_at: nil,
  title: 'Software Developer',
  description: 'Entwurf und Umsetzung individueller ERP-Anwendungen im Team; Entwicklung von API-Schnittstellen zur Integration verteilter Systeme;Pflege und Weiterentwicklung bestehender ERP-Anwendungen;',
  employment: :employee,
  position: :software_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Prozessoptimierung').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'REST').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bootstrap').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Redmine').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Atom').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Mac OS').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Software Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Kanban').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Error Tracking').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'AMQP').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RabbitMQ').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'XML').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Errbit').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Oracle').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Git Tower').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'DiffMerge').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'KVP').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Microservices').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Webservices').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Heterogene Systemlandschaften').id, experience: :frequent)


######################################################################################################


company = Address.create(
  name: 'InfluencerDB Tech GmbH & Co. KG',
  street: 'Im Mediapark 4D',
  zip: '50670',
  city: 'Köln',
  website: Website.create(url: 'https://influencerdb.com/')
)
ci = Job.create(
  started_at: '01-11-2016',
  ended_at: nil,
  title: 'Software Developer',
  description: 'Pflege und Weiterentwicklung der Influencer Marketing Platform',
  employment: :employee,
  position: :software_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company
)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Software Engineering').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Mobile Optimierung').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Error Tracking').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'KVP').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Kanban').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Scrum').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Lean Startup').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Python').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Django').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bootstrap').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bulma').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Tailwind CSS').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Vue').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Storybook').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bitbucket').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitLab').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitKraken').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PyCharm').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Visual Studio Code').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Trello').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Jira').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)



######################################################################################################
# interests
######################################################################################################

Interest.create(
  title: 'Spiele',
  description: '',
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Andere Welten',
  description: '',
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Outdoor',
  description: '',
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Aquascaping',
  description: '',
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Reisen',
  description: '',
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Sport',
  description: '',
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)

Interest.create(
  title: 'Web-Technologien',
  description: '',
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Open Source',
  description: '',
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Usability',
  description: '',
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Gamification',
  description: '',
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Softwarequalität',
  description: '',
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Interest.create(
  title: 'Digitale Prozesse',
  description: '',
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)

p 'end'
