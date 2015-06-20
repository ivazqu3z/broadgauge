import os

secret_key = "MaXvbXjgqTPRxJrnpZKl"

site_title = "Python Express"

if os.name == "nt": # Windows does not like the 0.0.0.0 IP, so have duplicate OATH2 details supporting localhost/127.0.0.1
    github_client_id = '81679e63a45aee157d62'
    github_client_secret = '343c40e95099c9b27b01a49df8daf2f1cedd8f61'

    google_client_id = '483978112071-ps7jdal5tdbtjo0utapi5f3lud75spru.apps.googleusercontent.com'
    google_client_secret = 'Ld4qdhXnQO-Qzc54tcf51LA6'
else:
    github_client_id = 'f6adcb4752f5c0738aa4'
    github_client_secret = '4f8b629504f059001c8d823f1710b30c73333354'

    google_client_id = '360651067559-f04a4e5scoa0bgau2tar06q05jeg5j2n.apps.googleusercontent.com'
    google_client_secret = 'CI8Pl4jSmsK5gbFRa9dfio1E'

db_parameters = dict(dbn='postgres', db='pythonexpress')

# MAIL SETTINGS

# smtp_server = "smtp.googlemail.com"
# smtp_port = 25
# smtp_username = "you@gmail.com"
# smtp_password = "secret"
# smtp_starttls = True
# from_address = "noreply@yourwebsite.com"

## to enable email on internal errors, uncomment the following line.
# bug_master = "you@example.com"
