
# Oauth Token

OAuth 2 Authorization endpoint response

## Structure

`OauthToken`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `access_token` | `String` | Required | Access token |
| `token_type` | `String` | Required | Type of access token |
| `expires_in` | `Integer` | Optional | Time in seconds before the access token expires |
| `scope` | `String` | Optional | List of scopes granted<br>This is a space-delimited list of strings. |
| `expiry` | `Integer` | Optional | Time of token expiry as unix timestamp (UTC) |
| `refresh_token` | `String` | Optional | Refresh token<br>Used to get a new access token when it expires. |

## Example (as JSON)

```json
{
  "access_token": "access_token4",
  "token_type": "token_type6",
  "expires_in": 74,
  "scope": "scope6",
  "expiry": 88,
  "refresh_token": "refresh_token6"
}
```

