create user aman@loaclhost identified by "aman@0207";
grant select on shell.emp to aman@localhost;
revoke all ,grant option from aman@localhost;