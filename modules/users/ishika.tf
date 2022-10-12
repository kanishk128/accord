data "discord_member" "Ishika" {
  server_id = data.discord_server.server.id
  user_id   = 695573666271854692
}

resource "discord_member_roles" "Ishika" {
  server_id = data.discord_server.server.id
  user_id   = data.discord_member.Ishika.id
  role {
    role_id = module.roles.hacktoberfest.id
  }
}
