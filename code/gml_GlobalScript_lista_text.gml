var arr_nomi, arr_cognomi, pquestion;
function lista_text() //gml_Script_lista_text
{
    global.text_custom_index = -1
    global.dialogue_type_text_box_w = 400
    global.dialogue_type_text_box_h = 250
    global.dialogue_type_text_box_startx = (240 - (global.dialogue_type_text_box_w / 2))
    global.dialogue_type_text_box_starty = (135 - (global.dialogue_type_text_box_h / 2))
    _bbox_w[0] = 48
    _bbox_h[0] = 16
    _bbox_w[1] = 64
    _bbox_h[1] = 16
    _bbox_w[2] = 80
    _bbox_h[2] = 16
    _bbox_w[3] = 96
    _bbox_h[3] = 16
    _bbox_w[4] = 128
    _bbox_h[4] = 16
    var a = (11 << 0)
    global.dialogue_type_text_hover[a] = -1
    var k = 0
    global.dialogue_type_text_x[a][k] = 240
    global.dialogue_type_text_y[a][k] = 210
    global.dialogue_type_text_w[a][k] = _bbox_w[4]
    global.dialogue_type_text_h[a][k] = _bbox_h[4]
    global.dialogue_type_text_text[a][k] = "I accept"
    k++
    global.dialogue_type_text_x[a][k] = 240
    global.dialogue_type_text_y[a][k] = 230
    global.dialogue_type_text_w[a][k] = _bbox_w[4]
    global.dialogue_type_text_h[a][k] = _bbox_h[4]
    global.dialogue_type_text_text[a][k] = "I have to think about it"
    k = 0
    arr_nomi[k] = "Toma"
    k++
    arr_nomi[k] = "Gedeon"
    k++
    arr_nomi[k] = "Spiridon"
    k++
    arr_nomi[k] = "Koloda"
    k++
    arr_nomi[k] = "Stepan"
    k++
    arr_nomi[k] = "Ludmil"
    k++
    arr_nomi[k] = "Vladimir"
    k++
    arr_nomi[k] = "Rostya"
    k++
    arr_nomi[k] = "Inna"
    k++
    arr_nomi[k] = "Lyosha"
    k++
    arr_nomi[k] = "Ermolai"
    k++
    arr_nomi[k] = "Isidor"
    k++
    arr_nomi[k] = "Anatolii"
    k++
    arr_nomi[k] = "Tikhon"
    k++
    arr_nomi[k] = "Ipatiy"
    k++
    arr_nomi[k] = "Vadim"
    k++
    arr_nomi[k] = "Iov"
    k = 0
    arr_cognomi[k] = "Solovev"
    k++
    arr_cognomi[k] = "Smirnov"
    k++
    arr_cognomi[k] = "Nikitin"
    k++
    arr_cognomi[k] = "Nikolaev"
    k++
    arr_cognomi[k] = "Popo"
    k++
    arr_cognomi[k] = "Pushkin"
    k++
    arr_cognomi[k] = "Vinogradov"
    k++
    arr_cognomi[k] = "Osipov"
    k++
    arr_cognomi[k] = "Frolov"
    k++
    arr_cognomi[k] = "Makarov"
    k++
    arr_cognomi[k] = "Sergeev"
    k++
    arr_cognomi[k] = "Kuzmin"
    k++
    arr_cognomi[k] = "Zhukov"
    k++
    arr_cognomi[k] = "Lebedev"
    k++
    arr_cognomi[k] = "Alexeev"
    var i = (1 << 0)
    var j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 1
    speaker_name[i] = "General Artemovich"
    speaker_sprite_idle[i] = 60
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (2 << 0)
    speaker_quest_max[i] = 7
    text_hello[i] = "Priviet comrade! How can I help you?"
    var u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    text[i][u] = "Join Green Army"
    dia_type[i][u] = (4 << 0)
    if (global.az_done[(12 << 0)] == 1 && global.az_done[(13 << 0)] == 0)
    {
        u++
        text[i][u] = "I have a proposal for you"
        dia_type[i][u] = (11 << 0)
        dia_type_answer[i][u] = "So you want a Crimson Corporation trader to come to the bunker?\nWhat a nerve! As much as I hate this proposal I think we could come to a compromise.\nI bet Shepard is leveraging the political value of this proposal. What a fool! I don't give a damn about what happens in the outside world; I have my orders straight.\n\nI will accept your proposal on one condition: you will forever be an enemy of the Green Army, you can still have access to our trader, and I will still give you missions to do but don't expect any more help from my soldiers out there.\nIf you accept, the next time you come to the bunker there will be a Crimson Corporation trader in the civilian dormitory area."
    }
    var pp = 0
    question[i][pp] = "Who are you and why are you here?"
    answer[i][pp] = "My name is Viktor Artemovich, I'm the general of the Green Army.\nAfter the nuclear disaster we were sent here to protect the citizens and maintain control. What we could not know is that a few days after the disaster a barrier formed on the perimeter of the Zone, preventing anyone from entering or leaving. We tried with every means at our disposal to create radio communication but without success.\nNo one knows what goes on in here."
    pp++
    question[i][pp] = "Tell me more about the Green Army"
    answer[i][pp] = "The Green Army is a delegation of the local Ground Forces.\nAfter the formation of the barrier and the consequent loss of communication I decided not to change our task and follow the orders of my superiors. We are the ones in charge and I will do everything to maintain order and make life as civilized as possible for everyone.\nSome say that we are an authoritarian regime but the truth is that we must use force to maintain order, I really can't imagine what this place would be like without us."
    pp++
    question[i][pp] = "How can I join the Green Army?"
    answer[i][pp] = "To join the Green Army you must have a high reputation with us.\nGo to Alexei Andreevich, our trader, he'll give you some work to do."
    i = (3 << 0)
    j = 0
    is_a_trader[i] = 1
    is_a_quest_giver[i] = 0
    speaker_name[i] = "Alexei Andreevich"
    speaker_sprite_idle[i] = 1931
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (2 << 0)
    speaker_quest_max[i] = 0
    text_hello[i] = "Priviet comrade! Do you wanna buy something?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Trade"
    dia_type[i][u] = (3 << 0)
    u++
    speaker_quest[i][j] = (105 << 0)
    speaker_quest_chance[i][j] = 50
    j++
    speaker_quest[i][j] = (106 << 0)
    speaker_quest_chance[i][j] = 2
    j++
    speaker_quest[i][j] = (107 << 0)
    speaker_quest_chance[i][j] = 2
    j++
    speaker_quest[i][j] = (109 << 0)
    speaker_quest_chance[i][j] = 2
    j++
    speaker_quest[i][j] = (158 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (157 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (159 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (160 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (163 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (164 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (165 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (166 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (141 << 0)
    speaker_quest_chance[i][j] = 2
    j++
    speaker_quest[i][j] = (142 << 0)
    speaker_quest_chance[i][j] = 2
    j++
    speaker_quest[i][j] = (167 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (168 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    i = (2 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = "Henry Davies"
    speaker_sprite_idle[i] = 56
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (3 << 0)
    speaker_quest_max[i] = 2
    speaker_quest[i][j] = (105 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (106 << 0)
    speaker_quest_chance[i][j] = 1
    speaker_quest[i][j] = (110 << 0)
    text_hello[i] = "How can I help you?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me more about your faction"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    text[i][u] = "I've found some documents"
    dia_type[i][u] = (2 << 0)
    u++
    pp = 0
    question[i][pp] = "Who are you?"
    answer[i][pp] = "My name is Henry Davies and I was in charge of the lab in Zakov."
    pp++
    question[i][pp] = "What does the Crimson Corporation do?"
    answer[i][pp] = "Crimson Corporation is a multinational company that deals with research and development in the biomedical field and is a leader in the sector. We had permission from the local government to open a laboratory in the old nuclear power plant in Zakov. We were conducting radiation experiments and research there."
    pp++
    question[i][pp] = "What does Crimson Corporation have to do with the accident?"
    answer[i][pp] = "Everyone thinks we were making secret weapons and stuff in the lab. HA!\nThe truth is we were conducting a routine experiment and something went wrong. There was an explosion and a massive release of radiation.\nWe don't know what really happened and our technicians tried so hard to understand it."
    pp++
    question[i][pp] = "If you're just a biomedical company, why are there so many troops?"
    answer[i][pp] = "I can see you're a clever person. Be careful asking these questions... \nI'd never want anything bad to happen to you."
    i = (4 << 0)
    j = 0
    is_a_trader[i] = 1
    is_a_quest_giver[i] = 0
    speaker_name[i] = "Riley Evans"
    speaker_sprite_idle[i] = 1931
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (3 << 0)
    speaker_quest_max[i] = 2
    speaker_quest[i][j] = (105 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (106 << 0)
    speaker_quest_chance[i][j] = 1
    speaker_quest[i][j] = (110 << 0)
    text_hello[i] = "Do you wanna buy something?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Trade"
    dia_type[i][u] = (3 << 0)
    i = (31 << 0)
    j = 0
    is_a_trader[i] = 1
    is_a_quest_giver[i] = 0
    speaker_name[i] = "Riley Evans"
    speaker_sprite_idle[i] = 1931
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (3 << 0)
    speaker_quest_max[i] = 2
    speaker_quest[i][j] = (105 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    speaker_quest[i][j] = (106 << 0)
    speaker_quest_chance[i][j] = 1
    speaker_quest[i][j] = (110 << 0)
    text_hello[i] = "Do you wanna buy something?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Trade"
    dia_type[i][u] = (3 << 0)
    i = (5 << 0)
    j = 0
    is_a_trader[i] = 1
    is_a_quest_giver[i] = 1
    speaker_name[i] = "Barman"
    speaker_sprite_idle[i] = 1931
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (1 << 0)
    speaker_quest_max[i] = 15
    speaker_quest[i][j] = (2 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    text_hello[i] = "Hello stranger! Are you hungry?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    text[i][u] = "Trade"
    dia_type[i][u] = (3 << 0)
    u++
    text[i][u] = "Refill hunger and thirst"
    dia_type[i][u] = (12 << 0)
    pp = 0
    question[i][pp] = "What is this place"
    answer[i][pp] = "This is the Zero Sievert, an old bunker built during the Cold war. It's the only safe place in Zakov.\nHere you can find all you need: equipment, supplies, tasks."
    pp++
    question[i][pp] = "What happened at Zakov"
    answer[i][pp] = "On April 4, 2017, the plant exploded. Nobody really knows what happened but surely the Crimson Corporation had something to do with it.\nThey say they didn't conduct any dangerous experiments but I don't believe them, nobody here believes them.\nMaybe you'll have better luck if you ask them, there should be a base in the industrial area.\nBut don't get your hopes up, I doubt they'll tell you the truth."
    pp++
    question[i][pp] = "Tell me more about the old nuclear power plant"
    answer[i][pp] = "It was a nuclear power plant active until 2014, after which the local government allowed the multinational Crimson Corporation to occupy the plant and turn it into a sort of secret laboratory, but declined all responsibility. A cliche, right?\nWe were not allowed to know what was going on in there, but it was not uncommon for strange things to happen, such as electronic devices not working for hours, or totally missing a radio signal."
    pp++
    question[i][pp] = "Where can I find some jobs?"
    answer[i][pp] = "I can give you a few ones.\nI don't think the Green Army wants to deal with a rookie, I can put in a good word for you, but first let's see if you can survive out there.\nBesides, the Doctor is always looking for someone willing to risk their life to get him samples.\nTry going to talk to him, see what he says."
    pp++
    question[i][pp] = "How can I reach other areas?"
    answer[i][pp] = "Oh, so you wanna be a Hunter? That's what we call people that go outside and gather resources.\nYou need to talk to the Conductor, near the train.\nIf you want to know more about the different areas, go and talk with the guide. You can usually find him near the bunker's main door.\nGood luck Hunter!"
    pp++
    question[i][pp] = "Where can I store my items?"
    answer[i][pp] = "If you continue to the left you will find a room with crates and a workbench.\nYou can use that place to do whatever you want, you can even build something in there as long as you are able to do so.\nI suggest you take a look at the workbench, there you can create items that you'll need during your hunts."
    if (global.quest_unique_done[(91 << 0)] == 1)
    {
        pp++
        question[i][pp] = "Why am I always the only one doing these missions?"
        answer[i][pp] = "You're not the only one, you're just the one coming back alive right now...\nLook around, this place is full of deluded people who think that one day they'll be taken away, that they'll go home.\nHome no longer exists...\nMost of the other hunters go around looking for supplies but only the bravest or most reckless try to do what you are doing.\nWhy doesn't the Green Army take care of its own business? Good question.\nAs far as I understand it, they interfere as little as possible, their orders are to control this place and especially to prevent anyone from getting to the outside world."
    }
    i = (9 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 1
    speaker_name[i] = "Engineer Volkov"
    speaker_sprite_idle[i] = 126
    speaker_sprite_move[i] = 127
    speaker_move[i] = 0
    speaker_faction[i] = (1 << 0)
    speaker_quest_max[i] = 2
    speaker_quest[i][j] = (115 << 0)
    speaker_quest_chance[i][j] = 1
    text_hello[i] = "Hi!"
    text[i][0] = "Bye"
    text[i][1] = "Tell me something"
    text[i][2] = "Task"
    text[i][3] = "Barter and crafting"
    text[i][4] = "Repair equipment"
    pp = 0
    question[i][pp] = "Tell me more about your faction"
    answer[i][pp] = "answer"
    i = (6 << 0)
    j = 0
    is_a_trader[i] = 1
    is_a_quest_giver[i] = 1
    speaker_quest_max[i] = 15
    speaker_quest[i][j] = (50 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    text_hello[i] = "Hey comrade! What do you need?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    text[i][u] = "Trade"
    dia_type[i][u] = (3 << 0)
    u++
    text[i][u] = "Repair armor"
    dia_type[i][u] = (6 << 0)
    u++
    text[i][u] = "Heal me"
    dia_type[i][u] = (7 << 0)
    u++
    pp = 0
    question[i][pp] = "Who are you?"
    answer[i][pp] = "My name is Viktor Korolev, but everyone calls me The Doctor. I am a doctor and researcher at Zakov hospital, or rather, I was before all this happened.\nAfter the explosion, the local government allowed me to open a division to study the mutations that occurred in the flora and fauna.\nWe have practically infinite funds and I am very excited and happy to work on this project. Maybe I shouldn't be since the explosion caused the death of thousands of people.\nBut what can I do about it? It's a blessing that this happened!"
    pp++
    question[i][pp] = "How are the studies going?"
    answer[i][pp] = "They proceed slowly, to my chagrin.\nAt first all the staff were excited to venture into the area to take samples and gather information. But after most of the expeditions stopped returning, it's hard to find people who will accept the risk.\nThose who want to venture out are just ordinary people trying to make a fortune, I need well studied and smart ones."
    pp++
    question[i][pp] = "How has radiation changed the zone?"
    answer[i][pp] = "In an unbelievable way! It was clear right away that this is not just radiation, it's something never seen or imagined until now.\nAnomalies have been created that can pulverize you in a second! Fantastic!\nNot to mention the effect that the radiation has had on wildlife, it has quickly changed the DNA of the animals without causing their death, all while increasing their physical capabilities and senses.\nYou can find things out there that you wouldn’t see even in the best science fiction movies. Am I scaring you?\nMaybe I should stop, you could be a valuable resource for me."
    if (global.quest_unique_done[(41 << 0)] == 1 && global.quest_unique_done[(94 << 0)] == 0)
    {
        pp++
        question[i][pp] = "What happened to those people in the beds?"
        answer[i][pp] = "I don't know, some helicopters have fallen into the swamp recently.\nThe bodies have suffered severe radiation burns, believe me, it's not a good way to die.\nThey managed to extract some of them still alive, but they were unable to speak.\nThey kept their eyes completely wide open without ever blinking, by the time help arrived their eyes were dry.\nMy team of scientists are inspecting the bodies but I have never seen anything like this before."
    }
    if (global.quest_unique_done[(68 << 0)] == 1)
    {
        pp++
        question[i][pp] = "Are you analysing the flesh tissue I recovered from the lab?"
        answer[i][pp] = "Absolutely! It will take some time though.\nI have no idea what experiment they were doing down there but so far we have found out that it is definitely human flesh.\nThe fascinating thing is that it shows some very unusual properties, first of all the colour.\nHave you ever seen green human flesh?\nHAHA I'm so excited!I can't wait to find out more!\nOh right, surely someone died because it's human flesh, but what can I do? C'est la vie, right? Isn't that what they say in France?\nWell, never mind, as I said before it will take some time before we get any results, hopefully this will help us understand what happened."
    }
    if (global.quest_unique_done[(94 << 0)] == 1)
    {
        pp++
        question[i][pp] = "What the hell is that purple crystal?"
        answer[i][pp] = "I don't know hunter!\nI have sent a team to the site and we will soon build a containment structure to study it, stop there once in a while.\nI still can't understand how you managed to survive, you're a hard man to kill hahaha."
    }
    if (global.az_done[(5 << 0)] == 1)
    {
        pp++
        question[i][pp] = "What can you tell me about an old nuclear power plant in Ukraine?"
        answer[i][pp] = "Who told you about this? Well, never mind.\nI'm not allowed to talk about it but I could make an exception for you since you're giving us a lot of help.\nThe truth is that I don't know much either, as I told you, I was only a doctor and researcher.\nWhen they came to evacuate us, on the way here, I heard some Green Army bigwigs talking about a similar incident in Ukraine a few years ago: similar anomalies, radical changes in the environment.\nThey talked about a machine that could fuck up the brain and a large group of people who looked like a cult.\nIncredible stuff, and I didn't believe it, but then I had to change my mind when the data from the anomaly analysis came in.\nAnyway, when they realised I was listening they looked at me, but did nothing, as if they knew I wasn't ever going to get out of this place anyway...."
    }
    i = (7 << 0)
    j = 0
    is_a_trader[i] = 1
    is_a_quest_giver[i] = 0
    speaker_name[i] = "Barman"
    speaker_sprite_idle[i] = 48
    speaker_sprite_move[i] = 49
    speaker_move[i] = 0
    speaker_faction[i] = (1 << 0)
    speaker_quest_max[i] = 5
    speaker_quest[i][j] = (149 << 0)
    speaker_quest_chance[i][j] = 1
    text_hello[i] = "Hello stranger! Are you hungry?"
    text[i][0] = "Bye"
    text[i][1] = "I want to know something"
    text[i][2] = "Task"
    text[i][3] = "Trade"
    pp = 0
    question[i][pp] = "Tell me more about old nuclear power plant"
    answer[i][pp] = "aaa"
    i = (36 << 0)
    j = 0
    is_a_trader[i] = 1
    is_a_quest_giver[i] = 0
    speaker_name[i] = "aaaa"
    speaker_sprite_idle[i] = 1931
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (9 << 0)
    speaker_quest_max[i] = 0
    text_hello[i] = ""
    text[i][0] = "Bye"
    text[i][1] = "I want to know something"
    text[i][2] = "Task"
    pp = 0
    question[i][pp] = "Who are you?"
    answer[i][pp] = "I am Dmitriy.\nIf you are looking for some tasks you are in the right place, there is always something to do"
    pp++
    question[i][pp] = "What kind of tasks can you give me?"
    answer[i][pp] = "Of any kind. People come in here and tell me what they want.\nMy job is finding people willing to go out there for the reward."
    i = (30 << 0)
    j = 0
    is_a_trader[i] = 1
    is_a_quest_giver[i] = 1
    speaker_quest_max[i] = 2
    speaker_quest[i][j] = (69 << 0)
    speaker_quest_chance[i][j] = 1
    var already_done = global.quest_unique_done[(69 << 0)]
    if (already_done == 1)
    {
        speaker_quest[i][j] = (70 << 0)
        speaker_quest_chance[i][j] = 1
        j++
    }
    text_hello[i] = "Well well, a hunter. What do you want from the crimson Corporation?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    text[i][u] = "Trade"
    dia_type[i][u] = (3 << 0)
    u++
    text[i][u] = "Join Crimson Corporation"
    dia_type[i][u] = (5 << 0)
    if (global.quest_unique_done[(70 << 0)] == 1 && global.az_done[(12 << 0)] == 0)
    {
        u++
        text[i][u] = "Next step"
        dia_type[i][u] = (10 << 0)
        dia_type_answer[i][u] = "Now that you have killed several Green Army soldiers you have shown them that you mean business.\nI propose something to you: talk to Artemovich and see the possibility of having a Crimson Corporation trader inside the bunker.\nNo matter how much our factions are fighting, the ZERO Sievert bunker is still a safe zone.\nIt was not decided by my leaders or even the local government, there are international agreements regarding that bunker.\nThe only way for us to access it would be through force but there are too many civilians in the bunker and having dead civilians is not a wise poilitical move.\nSo, talk to Artemovich and find a compromise. Having a trader in the ZERO Sievert would also benefit our pockets."
    }
    pp = 0
    question[i][pp] = "Who are you?"
    answer[i][pp] = "My name is Reynard, I am the commander of the Crimson Corporation forces stationed at Zakov."
    pp++
    question[i][pp] = "If I want to talk to you again, do I have to pay each time?"
    answer[i][pp] = "Not forever, if you do some work for us I might even give you the opportunity to come here without paying"
    pp++
    question[i][pp] = "What is the Crimson Corporation?"
    answer[i][pp] = "It's a multinational company, a leader in the pharmaceutical and technology markets. Our research is mainly based on DNA and nanotechnology.\nOur experts detected a very different type of radiation here in Zakov, so we convinced the local government to give us permission to use the old nuclear power plant as a research laboratory."
    pp++
    question[i][pp] = "I have not heard good things about the Crimson Corporation"
    answer[i][pp] = "That's because you're from the ZERO Sievert bunker, you have been brainwashed by the Green Army.\nThey are not even supposed to be in Zakov according to our agreements, but after the explosion the situation deteriorated.\nThey arrived to evacuate the inhabitants, but stayed to find out what happened.\nTheir official orders are to protect the people left behind, but this is just a lie.\nWe've intercepted several radio messages of their commander's conversations.\nI do not know what they think they will find, we have nothing to hide ..."
    pp++
    question[i][pp] = "Why all these soldiers? What are you still doing here?"
    answer[i][pp] = "We are trying to find out what happened.\nThe explosion happened during a normal test at the nuclear power plant, that's all we know because everyone involved died instantly, the internet went down and we couldn't even recover the data.\nOur soldiers are here to protect us, have you seen what this radiation does to animals.\nWe could organize an expedition to get to the plant, but it's dangerous, too much radiation and anomalies."
    pp++
    question[i][pp] = "What is your relationship with the Green Army?"
    answer[i][pp] = "Immediately after the accident we were on good terms, they minded their own business and we minded ours.\nEverything changed when they found out that it was not normal radiation, that we had lied to them.\nSince then this place has been a war zone, no rules, no law.\nBoth the Green Army and the Crimson Corporation want the other out of the way, leaving room to move freely across the land and get to the plant first."
    i = (32 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 1
    speaker_name[i] = "Igor Kuzmin"
    speaker_sprite_idle[i] = 1931
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (9 << 0)
    speaker_quest_max[i] = 1
    speaker_quest[i][j] = (71 << 0)
    speaker_quest_chance[i][j] = 1
    text_hello[i] = ""
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    pp = 0
    question[i][pp] = "Who are you?"
    answer[i][pp] = "Who am I? Who are you, coming into my house like that!\nMeh... Sorry I'm not used to visitors.\nMy name is Igor and I'm a hunter, at least I used to be. Oh, not one of those who are called hunters now, I used to hunt animals before the disaster.\nI have my trusty silenced Mosin and a Toz 34 with me.\nOh, don't even think about it. If you want them, you have to kill me."
    pp++
    question[i][pp] = "What are you doing here all alone?"
    answer[i][pp] = "After the disaster those guys came, the ones with the green onesie, they looked like they were from one of those science fiction movies.\nThey ordered me to follow them. They said they had found a safe place in a bunker somewhere.\nI've always lived here, I didn't want to leave so I told them to fuck off by threatening them with a rifle.\nOne of the bastards shot me in the leg and they left me here. His name was... Oh yes! Bogdanov! Private Bogdanov! I heard his name when the others stopped him.\nMy leg has healed, but not completely. I can hardly hunt anymore."
    pp++
    question[i][pp] = "What was this place like before the disaster?"
    answer[i][pp] = "A marvel! There is a village in the middle of the forest, the inhabitants were practically all lumberjacks.\nThen some genius decided to build a fucking sawmill nearby.\nGood for business you might say, but it made enough noise to keep people awake at night.\nWe protested, but you can't do anything against those fucking businessmen.\nAfter the accident at the nuclear plant, some people left with the soldiers, others decided to stay there.\nSome time ago the village was attacked by bandits, I don't know what the villagers did, I only know that no one came to see me anymore..."
    i = (33 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 1
    speaker_name[i] = "Mr. Gears"
    speaker_sprite_idle[i] = 188
    speaker_sprite_move[i] = 188
    speaker_move[i] = 0
    speaker_faction[i] = (9 << 0)
    speaker_quest_max[i] = 1
    text_hello[i] = "Don't look at Mr Junk's treasure!"
    u = 0
    text[i][u] = "Bye Mr. Junk"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    text[i][u] = "Trade"
    dia_type[i][u] = (3 << 0)
    u++
    speaker_quest[i][j] = (172 << 0)
    speaker_quest_chance[i][j] = 1
    pp = 0
    question[i][pp] = "What a beautiful... costume I guess?"
    answer[i][pp] = "Oh! Oh! Beautiful, isn't it?!\nMr. Junk took it off a kid. Oh! Mr. Junk didn't steal it! No no no Mr. Junk doesn't steal.\nHe had the costume on, but luckily he was dead, yeah dead. What a great day!\nSo Mr. Junk took it and now it's his alone. HIS ALONE!"
    pp++
    question[i][pp] = "Who are you?"
    answer[i][pp] = "What do you mean? Oh! Oh! Right! Right!\nWho is Mr. Junk? Mmm... Who is Mr. Junk??\nOh! Oh! Mr. Junk name is Mr. Junk yes yes, Mr. Junk knows this because everyone used to call him that way.\nMr. Junk thinks it's because he really likes collecting treasure.\nMr. Junk doesn't know. You should ask them, but Mr. Junk thinks they're all dead now.\nOoohhh, yeeeeah. Dead, dead, dead."
    pp++
    question[i][pp] = "What can you tell me about this area?"
    answer[i][pp] = "Oh! This place is beautiful! Let Mr. Junk explain, let Mr. Junk explain!\nAfter the big BOOOM they brought us here, on the way there were a lot of people throwing up.\nStrangely enough, they were the first to die, so Mr. Junk started to take their things but the other people didn't want to and were very mean to Mr. Junk.\nBut Mr. Junk couldn't understand, if they're dead what are they going to do with all those beautiful treasures?\nSo Mr. Junk hid here, sometimes he goes out to find treasures, beautiful treasures.\nAs time went by, Mr. Junk saw fewer and fewer people around, at least living people. Dead people were plenty, yes, yes, yes\nSo Mr. Junk could finally take their things without anyone getting angry."
    pp++
    question[i][pp] = "What is that thing that looks like a person?"
    answer[i][pp] = "This is Grigoriy! He was the only nice child with Mr. Junk.\nHe and Mr. Junk grew up together, they went treasure hunting.\nThen one day Grigoriy found a beautiful treasure but Mr. Junk wanted it all for himself, he was very angry.\nGrigoriy held the treasure tightly in his hands, everyone says that Mr. Junk is stupid but Mr. Junk knows that the head is a weak point, so Mr. Junk took a stone and hit Grigoriy several times in the head.\nYes yes yes Mr. Junk is smart.\nMr. Junk was very happy because he had his treasure but also very sad because Grigoriy didn't move anymore.\nFrom that day on, Mr. Junk doesn't steal anymore, no, no, no."
    pp++
    question[i][pp] = "What's behind that door?"
    answer[i][pp] = "There's Mr. Junk's treasure!Don't look at it!\nMr. Junk is not happy when others look at his treasure!\nAnd don't try to open that door no no no no.\nDon't you dare!"
    i = (28 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = ""
    speaker_sprite_idle[i] = 1931
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (9 << 0)
    speaker_quest_max[i] = 0
    text_hello[i] = "I bet you have many questions"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "Who are you?"
    answer[i][pp] = "My name is not important, I'm just a Hunter like you.\nI have been travelling in these areas for a long time now, thanks to my experiences in the past it is like taking a walk.\nIt is relaxing."
    pp++
    question[i][pp] = "What are you doing here?"
    answer[i][pp] = "This is my current base, I usually move around a lot but I feel at home here.\nLike the good old days..."
    pp++
    question[i][pp] = "Where do you come from?"
    answer[i][pp] = "As you may have guessed, I am not a big talker.\nI don't want to talk about it, I lost my friends and companions in that place."
    pp++
    question[i][pp] = "What the hell is that big crystal?"
    answer[i][pp] = "Huh, that thing is like shit for flies.\nNo wonder the helicopters all crashed in this area.\nI know what it's like, at first you can't move a muscle, then you get a big headache and finally you have an unbearable urge to get close and touch it, but you're not aware of what you're doing.\nLuckily I saved you in time, otherwise you would have ended up like the crew of those helicopters.\nI've already seen a similar thing before..."
    i = (27 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = ""
    speaker_sprite_idle[i] = 73
    speaker_sprite_move[i] = 74
    speaker_move[i] = 1
    speaker_faction[i] = (4 << 0)
    speaker_quest_max[i] = 1
    text_hello[i] = "Are you back to see how the studies are going?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "What did you discover?"
    answer[i][pp] = "Not much... As you can see, this crystal is different from the others, it emits very strong radiation discharges, but thanks to the containment structure we are safe.\nWe have yet to discover the frequency of these discharges, and above all their nature.\nThe radiation is different though, it almost seems to have a hypnotic effect, I've never seen anything like it in my career.\nBefore coming to Zakov I heard rumours of a similar place and crystal in an old nuclear power plant in Ukraine but I don't know anything else.\nNot much information comes from that place. On the other hand, not much information comes out of Zakov either.\nIt's such a waste, who knows what we could discover if we had more resources and proper equipment.\nI'd better shut up, these ideas are not well received and I don't want to be heard by one of those soldiers."
    i = (34 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = ""
    speaker_sprite_idle[i] = 73
    speaker_sprite_move[i] = 74
    speaker_move[i] = 1
    speaker_faction[i] = (9 << 0)
    speaker_quest_max[i] = 1
    text_hello[i] = "Damn! These poor guys"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "What happened?"
    answer[i][pp] = "Recently helicopters have crashed near the swamp, these are the bodies of the crew...\nMy God what happened to them?!?!?\nGo talk to the doctor. Maybe he can tell you more."
    i = (11 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = "Markus"
    speaker_sprite_idle[i] = 48
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 1
    speaker_faction[i] = (1 << 0)
    speaker_quest_max[i] = 1
    text_hello[i] = "Hey!"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    var o = 0
    pquestion[o] = "What are you doing out here?"
    panswer[o] = "Nothing in particular, some days I need to get fresh air.\nLiving in the bunker all the time is not easy."
    o++
    pquestion[o] = "What are you doing out here?"
    panswer[o] = "This is none of your business, Hunter."
    o++
    pquestion[o] = "What are you doing out here?"
    panswer[o] = "Just chilling, drinking vodka, smoking cigarettes.\nThat's all."
    o++
    pquestion[o] = "Aren't you scared to be out here?"
    panswer[o] = "Well, obviously a little bit.\nA ghoul could pop up at any moment but what can you do about it, such is the life in the Zone."
    o++
    pquestion[o] = "Aren't you scared to be out here?"
    panswer[o] = "Nah! I am prepared!\nThe only thing that can scare me is running out of vodka! Haha"
    o++
    pquestion[o] = "Any interesting news?"
    panswer[o] = "Well I'm sorry but I can't help you.\nI generally prefer to mind my own business."
    o++
    pquestion[o] = "Any interesting news?"
    panswer[o] = "I heard that an old man lives in the Forest.\nThey say he managed to drive away a Green Army squad when they tried to take him away from his home.\nThe man has great courage! "
    o++
    pquestion[o] = "Any interesting news?"
    panswer[o] = "Try to be careful if you go to the village in the center of the Forest.\nI heard that recently a more organized group of bandits has settled there."
    o++
    pquestion[o] = "Any interesting news?"
    panswer[o] = "Sorry, I don't have any..."
    o++
    pquestion[o] = "Any interesting news?"
    panswer[o] = "I heard that a strange guy lives in Makeshift Camp. I can't remember the name but they said he's kind of crazy."
    var _index = abs(irandom((array_length_1d(pquestion) - 1)))
    pp = 0
    question[i][pp] = pquestion[_index]
    answer[i][pp] = panswer[_index]
    i = (10 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = "Markus"
    speaker_sprite_idle[i] = 48
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 1
    speaker_faction[i] = (1 << 0)
    speaker_quest_max[i] = 1
    text_hello[i] = "Hey!"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    i = (12 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = "The guide"
    speaker_sprite_idle[i] = 114
    speaker_sprite_move[i] = 1931
    speaker_move[i] = 0
    speaker_faction[i] = (1 << 0)
    speaker_quest_max[i] = 0
    text_hello[i] = "Hello comrade, how can I help you?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "Who are you?"
    answer[i][pp] = "My name is Akim Sokolov, but everyone calls me The Guide.\nBefore the explosion I worked as Zakov's tour guide. I was born in these areas and I know them like the back of my hand. If you need any directions, just ask."
    pp++
    question[i][pp] = "Tell me more about The forest"
    answer[i][pp] = "In the forest you will find mainly bandits and wild animals, in the center there was an inhabited village but a few weeks ago the bandits arrived, the few survivors took refuge here.\nThere is an old abandoned sawmill, also occupied by bandits.\nThe Green Army has an outpost in the forest, they won't attack you right away but make sure not to provoke them."
    pp++
    question[i][pp] = "Tell me more about The makeshift camp"
    answer[i][pp] = "It's the area where most of the population was evacuated.\nToday there's no one... alive, just a few bandits.\nThe radiation level isn't high, but stay away from the clusters of cars you find, the radiation there skyrocket."
    pp++
    question[i][pp] = "Tell me more about The industrial area"
    answer[i][pp] = "Is the area where Zakov's major industries used to be.\nIf you need any tools or electronic parts, that's the place. But be careful, there are more organized groups of bandits there."
    pp++
    question[i][pp] = "Tell me more about other areas"
    answer[i][pp] = "After the accident, I never ventured so far north. I don't know what's there now.\nThere used to be a swamp east of the industrial area."
    i = (16 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 1
    speaker_name[i] = "Conductor"
    speaker_quest_max[i] = 1
    text_hello[i] = "Hello hunter, do you wanna go somewhere?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    text[i][u] = "I want to leave"
    dia_type[i][u] = (8 << 0)
    u++
    pp = 0
    question[i][pp] = "Who are you?"
    answer[i][pp] = "I was a conductor of Zakov's train station.\nAfter the explosion the green army asked me, or rather ordered me, to stay in Zakov.\nI have been a train conductor for 40 years and given my experience on these railroads they said I would be a useful element."
    pp++
    question[i][pp] = "How can I leave?"
    answer[i][pp] = "I can carry you wherever you want.\nYou just have to pay a fee."
    pp++
    question[i][pp] = "How can I extract from a map?"
    answer[i][pp] = "The only way to leave the map is to find an extraction point.\nThey are marked on the personal device map as green circles.\nGood luck!"
    speaker_quest[i][j] = (72 << 0)
    speaker_quest_chance[i][j] = 1
    j++
    i = (37 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_faction[i] = (9 << 0)
    speaker_quest_max[i] = 0
    text_hello[i] = "Hey Hunter!"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    question[i][pp] = "Who are you?"
    answer[i][pp] = "My name is Sacriel and I recently arrived in the bunker.\nI have yet to settle in properly but be ready, in about a month I will have missions to give you."
    pp++
    i = (17 << 0)
    randomize()
    var nome1 = arr_nomi[irandom((array_length_1d(arr_nomi) - 1))]
    var cognome1 = arr_cognomi[irandom((array_length_1d(arr_cognomi) - 1))]
    var nome_completo = ((nome1 + " ") + cognome1)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = nome_completo
    speaker_sprite_idle[i] = 60
    speaker_sprite_move[i] = 61
    speaker_move[i] = 1
    speaker_faction[i] = (2 << 0)
    speaker_quest_max[i] = 1
    text_hello[i] = "Sorry comrade! I have something else to do"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "Are you happy with your work?"
    answer[i][pp] = "Not much. But orders are orders..."
    i = (26 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = ""
    speaker_sprite_idle[i] = 60
    speaker_sprite_move[i] = 61
    speaker_move[i] = 0
    speaker_faction[i] = (2 << 0)
    speaker_quest_max[i] = 1
    text_hello[i] = "Once you are ready, turn on the lights"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "When do we start?"
    answer[i][pp] = "Once you are ready, turn on the lights."
    pp++
    question[i][pp] = "What is the plan?"
    answer[i][pp] = "A light this bright should lure them out into the open, then the slaughter begins."
    i = (21 << 0)
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 0
    text_hello[i] = "Hello comrade!"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "What are you doing here?"
    answer[i][pp] = "I'm guarding the front door, can't you tell?"
    pp++
    question[i][pp] = "Is this place safe?"
    answer[i][pp] = "Yes, no mutant or bandit has ever made it through that door"
    i = (22 << 0)
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 0
    text_hello[i] = "Hello comrade!"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "What are you doing here?"
    answer[i][pp] = "My brother Vadim and I have been tasked to guard the main door."
    pp++
    question[i][pp] = "Where are you from?"
    answer[i][pp] = "We come from a small town in Siberia.\nJoining the army was the only way to escape from that life"
    pp++
    question[i][pp] = "So that's your brother Vadim?"
    answer[i][pp] = "Yeah, he used to be nicer before he became an Army Special Agent. He's been through a lot.\nHe was personally chosen by the general to come here. He asked me if I wanted to come with him and I immediately said yes.\nI thought working in this particular situation might open up opportunities for me to pursue a career in the Army....\nInstead we ended up at the gates of hell"
    i = (23 << 0)
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 0
    text_hello[i] = "What do you want?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "What are you doing here?"
    answer[i][pp] = "I'm guarding the front door.\nCan't you tell?"
    pp++
    question[i][pp] = "Where are you from?"
    answer[i][pp] = "It's none of your business. Ask my brother Yakim, he has always been the most talkative one."
    pp++
    question[i][pp] = "Is this place really safe?"
    answer[i][pp] = "Of course it is! No mutant or bandit has ever walked through that door."
    i = (24 << 0)
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 0
    text_hello[i] = "What do you want?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "Why can't I go through?"
    answer[i][pp] = "This area is reserved for the Green Army, you do not have authorization."
    i = (25 << 0)
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 0
    text_hello[i] = "Don't make a mess"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "Why can't I go through?"
    answer[i][pp] = "This area is reserved for the Green Army, you do not have authorization."
    i = (29 << 0)
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 0
    text_hello[i] = "What do you want?"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "I want to know something"
    dia_type[i][u] = (1 << 0)
    if (global.quest_unique_done[(70 << 0)] == 0)
    {
        u++
        text[i][u] = "Pay 5000 roubles to pass"
        dia_type[i][u] = (9 << 0)
    }
    u++
    pp = 0
    question[i][pp] = "Why can't I go through?"
    answer[i][pp] = "This area is restricted, you do not have permission to pass.\nYou have to pay 5000 roubles every time you want to access."
    i = (18 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 1
    text_hello[i] = "Hey!"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    pp = 0
    question[i][pp] = "Tell me more about your faction"
    answer[i][pp] = "answer"
    pp++
    question[i][pp] = "Where can I found some task?"
    answer[i][pp] = "answer"
    pp++
    question[i][pp] = "Tell me more about the nuclear plant disaster"
    answer[i][pp] = "answer"
    i = (8 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 1
    text_hello[i] = "Hey!"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    text[i][u] = "Task"
    dia_type[i][u] = (2 << 0)
    u++
    i = (19 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 1
    text_hello[i] = "Hey!"
    text[i][0] = "Bye"
    text[i][1] = "Tell me something"
    text[i][2] = "Task"
    pp = 0
    question[i][pp] = "Tell me more about your faction"
    answer[i][pp] = "answer"
    pp++
    question[i][pp] = "Where can I found some task?"
    answer[i][pp] = "answer"
    pp++
    question[i][pp] = "Tell me more about the nuclear plant disaster"
    answer[i][pp] = "answer"
    i = (20 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 1
    text_hello[i] = "Hey!"
    u = 0
    text[i][u] = "Bye"
    dia_type[i][u] = (0 << 0)
    u++
    text[i][u] = "Tell me something"
    dia_type[i][u] = (1 << 0)
    u++
    pp = 0
    question[i][pp] = "Tell me more about your faction"
    answer[i][pp] = "answer"
    pp++
    question[i][pp] = "Where can I found some task?"
    answer[i][pp] = "answer"
    pp++
    question[i][pp] = "Tell me more about the nuclear plant disaster"
    answer[i][pp] = "answer"
    i = (13 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = "Alyosha Egorov"
    speaker_sprite_idle[i] = 120
    speaker_sprite_move[i] = 121
    speaker_move[i] = 1
    speaker_faction[i] = (1 << 0)
    speaker_quest_max[i] = 1
    text_hello[i] = "Go away! I don't have time to waste on people like you."
    text[i][0] = "Bye"
    text[i][1] = "Tell me something dickhead"
    pp = 0
    question[i][pp] = "Why are you so rude?"
    answer[i][pp] = "WHY? Look where we live now.\nI was the director of one of Zakov's most important factories. When the accident happened, I didn't get out of the exclusion zone in time. Now I'm stuck here, along with all these filthy people."
    i = (14 << 0)
    j = 0
    is_a_trader[i] = 0
    is_a_quest_giver[i] = 0
    speaker_name[i] = "Yulian Borisov"
    speaker_sprite_idle[i] = 122
    speaker_sprite_move[i] = 123
    speaker_move[i] = 1
    speaker_faction[i] = (1 << 0)
    speaker_quest_max[i] = 1
    text_hello[i] = "..."
    text[i][0] = "Mmm...Ok bye!"
    text[i][1] = "Tell me something"
    pp = 0
    question[i][pp] = "You're not a man of many words, I see."
    answer[i][pp] = "..."
    i = (35 << 0)
    is_a_trader[i] = 1
    is_a_quest_giver[i] = 0
    speaker_quest_max[i] = 0
    text_hello[i] = "Hello rookie! Welcome to the tutorial!"
    text[i][0] = "Bye"
    text[i][1] = "I want to know something"
    text[i][2] = "Task"
    text[i][3] = "Trade"
    pp = 0
    question[i][pp] = "What's the point of talking to npc?"
    answer[i][pp] = "Npc can give you usefull information, task and trade with you."
    pp++
    return;
}

