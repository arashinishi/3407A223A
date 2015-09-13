#/bin/bash

rails g model User username:string password:string iid:string
rails g model UserType description:text shortname:string can_create:boolean can_read:boolean can_edit:boolean admin:boolean
rails g model places shortname:string name:string description:text
rails g model Building shortname:string name:string description:text
rails g model Object shortname:string name:string description:text
rails g model Petition reason:text repeats:string
rails g model Interval reason:text from:timestamp to:timestamp
