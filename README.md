# README

Aplicação Rails com DevContainer e Autenticação JWT usando Devise.


---


### Autenticação


<details>
<summary><i> Login </i></summary>

```curl
curl --include --request POST \
  --url http://localhost:3000/login \
  --header 'Content-Type: application/json' \
  --data '{
	"user": {
		"email": "same@email.com",
		"password": "Senha@123"
	}
}'
```
</details>


<details>
<summary><i> Sign Up </i></summary>

```curl
curl --include --request POST \
  --url http://localhost:3000/signup \
  --header 'Content-Type: application/json' \
  --data '{
	"user": {
		"email": "same@email.com",
		"password": "Senha@123"
	}
}'
```
</details>


<details>
<summary><i> Current User </i></summary>

```curl
curl --request GET \
  --url http://localhost:3000/current_user \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiI5M2VkMTQ1ZS1mMGViLTQxZjUtOWMyYS0yY2ZjNDNiMTE5ODYiLCJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzM1NTg2Njc5LCJleHAiOjE3MzU1OTAyNzl9.ObDUkRFXKBIi8B76YtNlb5bd9dfo8hxe9i8Zek0SB8k'
```
</details>


<details>
<summary><i> Logout </i></summary>

```curl
curl --request DELETE \
  --url http://localhost:3000/logout \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIxNjFkM2UxOC00ZTVlLTRkYjctYTYxZC0wZjFjMmRjNzAzNjIiLCJzdWIiOiI0Iiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzM1NTcyMzk1LCJleHAiOjE3MzU1NzU5OTV9.wmk0chyG7lV1aQecY5LD4l8iDU-DTbGwRzcZqeug0LU'
```
</details>

---

### Posts

<details>
<summary><i> index </i></summary>

```curl
curl --request GET \
  --url http://localhost:3000/posts \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIxNjFkM2UxOC00ZTVlLTRkYjctYTYxZC0wZjFjMmRjNzAzNjIiLCJzdWIiOiI0Iiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzM1NTcyMzk1LCJleHAiOjE3MzU1NzU5OTV9.wmk0chyG7lV1aQecY5LD4l8iDU-DTbGwRzcZqeug0LU'
```
</details>


<details>
<summary><i> create </i></summary>

```curl
curl --request POST \
  --url http://localhost:3000/posts \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIwNDUxZWVkZi0yZTRjLTRkN2ItOTg1Zi0yNWRmYjRlYzU3ZWIiLCJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzM1MzIyMTcxLCJleHAiOjE3MzUzMjU3NzF9.wqGqKIvsGxuKu2g8DQF4rr36pM8RoXxm6imIGk6z58I' \
  --data '{
	"post": {
		"title": "Filmes",
		"body": "Logan"
	}
}'
```
</details>


<details>
<summary><i> show </i></summary>

```curl
curl --request GET \
  --url http://localhost:3000/posts/1 \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIwNDUxZWVkZi0yZTRjLTRkN2ItOTg1Zi0yNWRmYjRlYzU3ZWIiLCJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzM1MzIyMTcxLCJleHAiOjE3MzUzMjU3NzF9.wqGqKIvsGxuKu2g8DQF4rr36pM8RoXxm6imIGk6z58I'
```
</details>


<details>
<summary><i> update </i></summary>

```curl
curl --request PATCH \
  --url http://localhost:3000/posts/1 \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIwNDUxZWVkZi0yZTRjLTRkN2ItOTg1Zi0yNWRmYjRlYzU3ZWIiLCJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzM1MzIyMTcxLCJleHAiOjE3MzUzMjU3NzF9.wqGqKIvsGxuKu2g8DQF4rr36pM8RoXxm6imIGk6z58I' \
  --data '{
	"post": {
		"title": "Filmes",
		"body": "Divertida Mente"
	}
}'
```
</details>


<details>
<summary><i> destroy </i></summary>

```curl
curl --request DELETE \
  --url http://localhost:3000/posts/1 \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIwNDUxZWVkZi0yZTRjLTRkN2ItOTg1Zi0yNWRmYjRlYzU3ZWIiLCJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNzM1MzIyMTcxLCJleHAiOjE3MzUzMjU3NzF9.wqGqKIvsGxuKu2g8DQF4rr36pM8RoXxm6imIGk6z58I'
```
</details>


---


### Insomnia

- Salvar _token_ no `After-response` do _login_, para utilizar a variável `auth_token` em outras _requests_

```js
// Encontrar o cabeçalho de autorização.
const authorizationHeader = insomnia.response.headers.find(
  ({ key }) => key.toLowerCase() === 'authorization'
);

// Verificar se o cabeçalho existe e extrair o token.
if (authorizationHeader) {
  const token = authorizationHeader.value.replace(/^Bearer\s/, '');
  console.log(token);

  insomnia.environment.set('auth_token', token);
} else {
  console.error('Authorization header not found');
}
```
