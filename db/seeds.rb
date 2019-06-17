# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.where([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.where(name: 'Luke', movie: movies.first)


# Let's put some common child diseases

influenza = Disease.where({
    name: "Influenza",
    url: "https://www.cdc.gov/flu/about/keyfacts.htm",
    img: "https://www.bmj.com/content/bmj/355/bmj.i6258/F1.large.jpg?width=800&height=600"
}).first_or_create

common_cold = Disease.where({
    name: "Common Cold",
    url: "https://medlineplus.gov/commoncold.html",
    img: "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BBS47nG.img?h=800&w=1598&m=6&q=60&o=f&l=f"
}).first_or_create

ear_infection = Disease.where({
    name: "Ear Infection",
    url: "https://www.mayoclinic.org/diseases-conditions/ear-infections/symptoms-causes/syc-20351616",
    img: "https://www.mayoclinic.org/-/media/kcms/gbs/patient-consumer/images/2013/11/15/17/40/ds00472_-ds00303_-ds00172_-my00601_im00416_ww5rp36t_jpg.jpg"
}).first_or_create

rota_virus = Disease.where({
    name: "Rota Virus",
    url: "https://www.cdc.gov/rotavirus/index.html",
    img: "https://www.texmed.org/uploadedimages/Current/2016_About_TMA/TMA_Publications/Texas_Medicine/Jan_19_TM_Vaccines.jpg?n=1572"
    }).first_or_create

mumps = Disease.where({
    name: "Mumps",
    url: "https://www.cdc.gov/mumps/index.html",
    img: "https://www.asd.wednet.edu/UserFiles/Servers/Server_3164237/Image/Departments/Health%20Services/Mumps%20Graphic.jpg"
}).first_or_create

ger = Disease.where({
    name: "Gastroesophageal reflux (GER)",
    url: "https://www.mayoclinic.org/diseases-conditions/gerd/symptoms-causes/syc-20361940",
    img: "https://i1.wp.com/murrayvillechiropractic.com/wp-content/uploads/2016/02/ds00787_-pr00044_im04004_r7_infant_acid_reflux_thu_jpg.jpg?zoom=2&fit=468%2C610&ssl=1"
}).first_or_create

uti = Disease.where({
    name: "Urinary Tract Infection",
    url: "https://kidshealth.org/en/parents/urinary.html",
    img: "https://cdn.prod-carehubs.net/n1/802899ec472ea3d8/uploads/2017/06/a-medical-illustration-of-the-kidneys-ureters-bladder-and-urethra-with-E.-coli-in-the-background-and-a-young-girl-holding-her-belly-and-looking-distressed-illustrating-UTIs-in-children-original.jpg"

}).first_or_create

gastr = Disease.where({
    name: "Gastroenteritis",
    url: "https://www.merckmanuals.com/home/children-s-health-issues/digestive-disorders-in-children/gastroenteritis-in-children",
    img: "https://0f14676b303fd91881eb-98dd17e178263eba3c55ca6434a72b9d.ssl.cf5.rackcdn.com/img/longform_content_images/stomachflu1.jpg"
}).first_or_create

hfmd = Disease.where({
    name: "Hand-Foot-Mouth Disease",
    url: "https://www.webmd.com/children/guide/hand-foot-mouth-disease#1",
    img: "https://localtvwreg.files.wordpress.com/2016/11/symptoms.jpg?quality=85&strip=all&w=800&h=450&crop=1"
}).first_or_create

fd = Disease.where({
    name: "Fifth Disease",
    url: "https://www.cdc.gov/parvovirusb19/fifth-disease.html",
    img: "https://www.findatopdoc.com/var/fatd/storage/images/_aliases/infographic_main/top-videos-and-slideshows/what-is-fifths-disease/2894558-1-eng-US/What-is-Fifths-Disease.jpg"
}).first_or_create


#Let's put treatment for above diseases (many to many relatinship is possible)

fluids= Treatment.where({
     name: "Fluids and Rest",
     url: ""
}).first_or_create

breast_milk = Treatment.where({
    name: "Breast Milk or Baby Formula",
    url: ""
}).first_or_create

congestion_treatment = Treatment.where({
    name: "Treat Congestion and Symptoms",
    url: ""
}).first_or_create

humidifier = Treatment.where({
    name: "Use humidifier",
    url: ""
}).first_or_create

prevent_flu = Treatment.where({
    name: "Prevent Flu",
    url: ""
}).first_or_create

wait_5_6 = Treatment.where({
    name: "Wait for 5-6 days",
    url: ""
}).first_or_create

wait_1_2 = Treatment.where({
    name: "Wait for 1-2 days",
    url: ""
}).first_or_create

wait_4_5 = Treatment.where({
    name: "Wait for 4-5 days",
    url: ""
}).first_or_create

wait_7_8 = Treatment.where({
    name: "Wait for 7-8 days",
    url: ""
}).first_or_create

over_the_counter = Treatment.where({
    name: "Over-the-counter pain relievers like ibuprofen (Advil) or acetaminophen (Tylenol)",
    url: ""
}).first_or_create

antibodies = Treatment.where({
    name: "Antibodies",
    url: ""
}).first_or_create

vaccination = Treatment.where({
    name: "Vaccination",
    url: ""
}).first_or_create

feeding_routine = Treatment.where({
    name: "Change Feeding routine",
    url: ""
}).first_or_create

cimetidine = Treatment.where({
    name: "Cimetidine",
    url: ""
}).first_or_create

famotidine = Treatment.where({
    name: "Famotidine",
    url: ""
}).first_or_create

trimethoprim = Treatment.where({
    name: "Trimethoprim/Sulfamethoxazole",
    url: ""
}).first_or_create

antihistamine = Treatment.where({
    name: "Antihistamine",
    url: ""
}).first_or_create

anti_inflammatory = Treatment.where({
    name: "Anti-inflammatory pain relievers such as Ibuprofen",
    url: ""
}).first_or_create


#Let's put some symptoms for the common diseases (many to many relationship is possible)

# cold = Symptom.where({
#     name: "Cold"
# }).first_or_create

# common_cold = Symptom.where({
#     name: "Common Cold"
# }).first_or_create

cold = Symptom.where({
    name: "Cold"
}).first_or_create

cold_2 = Symptom.where({
    name: "Common Cold"
}).first_or_create

high_fever = Symptom.where({
    name: "High fever"
}).first_or_create

mild_fever = Symptom.where({
    name: "Mild fever"
}).first_or_create

fever = Symptom.where({
    name: "Fever"
}).first_or_create

body_aches = Symptom.where({
    name: "Body aches"
}).first_or_create

chills = Symptom.where({
    name: "Chills"
}).first_or_create

headache = Symptom.where({
    name: "Headache"
}).first_or_create

sore_throat = Symptom.where({
    name: "sore throat"
}).first_or_create

runny_nose = Symptom.where({
    name: "Runny Nose"
}).first_or_create

sneezing = Symptom.where({
    name: "Sneezing"
}).first_or_create

fatigue = Symptom.where({
    name: "Fatigue"
}).first_or_create

cough = Symptom.where({
    name: "Cough"
}).first_or_create

unexplained_fever = Symptom.where({
    name: "Unexplained fever"
}).first_or_create

fussy = Symptom.where({
    name: "Fussy"
}).first_or_create

trouble_sleeping = Symptom.where({
    name: "Trouble sleeping"
}).first_or_create

irritable_ears= Symptom.where({
    name: "Irritable ears"
}).first_or_create

trouble_hearing = Symptom.where({
    name: "Trouble hearing sounds"
}).first_or_create

severe_diarrhea = Symptom.where({
    name: "Severe diarrhea"
}).first_or_create

diarrhea = Symptom.where({
    name: "Diarrhea"
}).first_or_create

dehydration = Symptom.where({
    name: "Dehydration"
}).first_or_create

sunken_eyes = Symptom.where({
    name: "Sunken eyes"
}).first_or_create

no_tears = Symptom.where({
    name: "No tears"
}).first_or_create

swollen_jaw_glands = Symptom.where({
    name: "Swollen jaw glands"
}).first_or_create

swollen_cheek_glands = Symptom.where({
    name: "Swollen cheek glands"
}).first_or_create

heartburn = Symptom.where({
    name: "Heartburn"
}).first_or_create

chest_pain = Symptom.where({
    name: "Chest pain"
}).first_or_create

coughing = Symptom.where({
    name: "Coughing"
}).first_or_create

vomiting = Symptom.where({
    name: "Vomiting"
}).first_or_create

urination_pain = Symptom.where({
    name: "Urination pain"
}).first_or_create

urination_burn = Symptom.where({
    name: "Urination burn"
}).first_or_create

frequent_urination = Symptom.where({
    name: "Frequent urination"
}).first_or_create

bedwetting = Symptom.where({
    name: "Bedwetting"
}).first_or_create

abdominal_pain = Symptom.where({
    name: "Abdominal pain"
}).first_or_create

side_pain = Symptom.where({
    name: "Side pain"
}).first_or_create

back_pain = Symptom.where({
    name: "Back pain"
}).first_or_create

hand_sores = Symptom.where({
    name: "Hand sores"
}).first_or_create

foot_sores = Symptom.where({
    name: "Foot sores"
}).first_or_create

red_blistrs_hand = Symptom.where({
    name: "Red blisters on hand"
}).first_or_create

red_blistrs_foot = Symptom.where({
    name: "Red blisters on foot"
}).first_or_create

bright_red_rash = Symptom.where({
    name: "Bright red rash on the cheeks"
}).first_or_create

rash_on_torso = Symptom.where({
    name: "Lacy-looking rash on torso"
}).first_or_create


### Let's fill the symptoms and treatments for diseases (Many to Many relationship)

influenza.symptoms << high_fever
influenza.symptoms << body_aches
influenza.symptoms << chills
influenza.symptoms << headache
influenza.symptoms << sore_throat

influenza.treatments << breast_milk
influenza.treatments << congestion_treatment
influenza.treatments << humidifier
influenza.treatments << prevent_flu

##

common_cold.symptoms << cold
common_cold.symptoms << cold_2
common_cold.symptoms << runny_nose
common_cold.symptoms << sneezing
common_cold.symptoms << sore_throat
common_cold.symptoms << fatigue
common_cold.symptoms << cough
common_cold.symptoms << mild_fever

common_cold.treatments << wait_5_6
common_cold.treatments << over_the_counter

##

ear_infection.symptoms << unexplained_fever
ear_infection.symptoms << fussy
ear_infection.symptoms << trouble_sleeping
ear_infection.symptoms << irritable_ears
ear_infection.symptoms << trouble_hearing

ear_infection.treatments << wait_1_2
ear_infection.treatments << antibodies

##

rota_virus.symptoms << severe_diarrhea
rota_virus.symptoms << dehydration
rota_virus.symptoms << sunken_eyes
rota_virus.symptoms << no_tears

rota_virus.treatments << wait_1_2
rota_virus.treatments << antibodies

##

mumps.symptoms << fever
mumps.symptoms << body_aches
mumps.symptoms << headache
mumps.symptoms << swollen_jaw_glands
mumps.symptoms << swollen_cheek_glands

mumps.treatments << vaccination

##

ger.symptoms << heartburn
ger.symptoms << chest_pain
ger.symptoms << coughing
ger.symptoms << vomiting

ger.treatments << feeding_routine
ger.treatments << cimetidine
ger.treatments << famotidine

##

uti.symptoms << urination_pain
uti.symptoms << urination_pain
uti.symptoms << frequent_urination
uti.symptoms << bedwetting
uti.symptoms << abdominal_pain
uti.symptoms << side_pain
uti.symptoms << back_pain

uti.treatments << antibodies
uti.treatments << trimethoprim

##

gastr.symptoms << vomiting
gastr.symptoms << diarrhea
gastr.symptoms << abdominal_pain

gastr.treatments << fluids

##

hfmd.symptoms << hand_sores
hfmd.symptoms << foot_sores
hfmd.symptoms << red_blistrs_foot
hfmd.symptoms << red_blistrs_hand

hfmd.treatments << wait_7_8
hfmd.treatments << over_the_counter

##

fd.symptoms << bright_red_rash
fd.symptoms << rash_on_torso

fd.treatments << wait_4_5
fd.treatments << antihistamine
fd.treatments << anti_inflammatory