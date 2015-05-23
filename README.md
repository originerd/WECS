# This app is an web service for untitled.

## API
### Users

1. Create a user
	* Method
		* POST
	* URL
		* http://wecs.herokuapp.com/api/v1/users
	* Headers
		* Content-Type
	* Parameters
		* user
			* email
			* name
			* password
			* password_confirmation
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/users
			* Headers
				* Content-Type
					* application/json
			* Parameter Body
				* {"user": {"email": "example@email.com", "name": "Name", "password": "password", "password_confirmation": "password"}}
		* Response
			* {"result": "success","user": {"id": 100,"email": "example@email.com","created_at": 2015-05-04T08:27:54.975+09:00","updated_at": 2015-05-04T08:27:54.975+09:00","name": "Name","auth_token": AUTH_TOKEN}}
1. Update a user
	* Method
		* PUT
	* URL
		* http://wecs.herokuapp.com/api/v1/users
	* Headers
		* Content-Type
		* Authorization
	* Parameters
		* user
			* email
			* name
			* password
			* password_confirmation
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/users
			* Headers
				* Content-Type
					* application/json
				* Authorization
					* AUTH_TOKEN
			* Parameter Body
				* {"user": {"email": "example@email.com", "name": "Name", "password": "password", "password_confirmation": "password"}}
		* Response
			* {"result": "success","user": {"id": 100,"email": "example@email.com","created_at": 2015-05-04T08:27:54.975+09:00","updated_at": 2015-05-04T08:27:54.975+09:00","name": "Name","auth_token": AUTH_TOKEN}
1. Delete a user
	* Method
		* DELETE
	* URL
		* http://wecs.herokuapp.com/api/v1/users
	* Headers
		* Authorization
	* Paramters
		* None
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/users
			* Authorization
				* AUTH_TOKEN
		* Response
			* {"result":"success"}

### Sessions
1. Sign in
	* Method
		* POST
	* URL
		* http://wecs.herokuapp.com/api/v1/sessions
	* Headers
		* Content-Type
	* Parameters
		* session
			* email
			* password
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/sessions
			* Headers
				* Content-Type
					* application/json
			* Parameter Body
				* {"session": {"email": "example@email.com", "password": "password"}}
		* Response
			* {"result": "success","user": {"id": 100,"email": "example@email.com","created_at": 2015-05-04T08:27:54.975+09:00","updated_at": 2015-05-04T08:27:54.975+09:00","name": "Name","auth_token": AUTH_TOKEN}
1. Sign out
	* Method
		* DELETE
	* URL
		* http://wecs.herokuapp.com/api/v1/sessions
	* Headers
		* Authorization
	* Paramters
		* None
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/sessions
			* Headers
				* Authorization
					* AUTH_TOKEN
		* Response
			* {"result": "success"}

### Boxes
1. Read all boxes
	* Method
		* GET
	* URL
		* http://wecs.herokuapp.com/api/v1/boxes
	* Headers
		* Authorization
	* Parameters
		* None
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/boxes
			* Headers
				* Authorization
					* AUTH_TOKEN
		* Response
			* {"result": "success",
"boxes": [{"id": 100,"user_id": 100,"name": "EXAMPLE1","description": "EXAMPLE1","created_at": "2015-05-23T18:00:32.589Z","updated_at": "2015-05-23T18:00:32.589Z"}},{"id": 101,"user_id": 101,"name": "EXAMPLE2","description": "EXAMPLE2","created_at": "2015-05-23T18:00:32.589Z","updated_at": "2015-05-23T18:00:32.589Z"}},{"id": 102,"user_id": 102,"name": "EXAMPLE3","description": "EXAMPLE3","created_at": "2015-05-23T18:00:32.589Z","updated_at": "2015-05-23T18:00:32.589Z"}]}
1. Read a box
	* Method
		* GET
	* URL
		* http://wecs.herokuapp.com/api/v1/users/(:id)
	* Headers
		* None
	* Paramters
		* None
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/users/100
		* Response
			* {"result": "success","box": {"id": 100,"user_id": 100,"name": "EXAMPLE","description": "EXAMPLE","created_at": "2015-05-23T18:00:32.589Z","updated_at": "2015-05-23T18:00:32.589Z"}}
1. Create a box
	* Method
		* PUT
	* URL
		* http://wecs.herokuapp.com/api/v1/boxes
	* Headers
		* Content-Type
		* Authorization
	* Parameters
		* box
			* name
			* description
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/boxes
			* Headers
				* Content-Type
					* application/json
				* Authorization
					* AUTH_TOKEN
			* Parameter Body
				* {"box":{"name":"EXAMPLE", "description":"EXAMPLE"}}
		* Response
			* {"result": "success","box": {"id": 100,"user_id": 100,"name": "EXAMPLE","description": "EXAMPLE","created_at": "2015-05-23T18:00:32.589Z","updated_at": "2015-05-23T18:00:32.589Z"}}
1. Update a box
	* Method
		* PUT
	* URL
		* http://wecs.herokuapp.com/api/v1/boxes/(:id)
	* Headers
		* Content-Type
		* Authorization
	* Parameters
		* box
			* name
			* description
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/boxes/100
			* Headers
				* Content-Type
					* application/json
				* Authorization
					* AUTH_TOKEN
			* Parameter Body
				* {"box":{"name":"EXAMPLE", "description":"EXAMPLE"}}
		* Response
			* {"result": "success","box": {"id": 100,"user_id": 100,"name": "EXAMPLE","description": "EXAMPLE","created_at": "2015-05-23T18:00:32.589Z","updated_at": "2015-05-23T18:00:32.589Z"}}
1. Delete a box
	* Method
		* DELETE
	* URL
		* http://wecs.herokuapp.com/api/v1/boxes/(:id)
	* Headers
		* Authorization
	* Paramters
		* None
	* Example
		* Request
			* URL
				* http://wecs.herokuapp.com/api/v1/boxes/100
			* Authorization
				* AUTH_TOKEN
		* Response
			* {"result":"success"}