# AmzSpApi::ServicesApiModel::JobListing

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_result_size** | **Integer** | Total result size of the query result. | [optional] 
**next_page_token** | **String** | A generated string used to pass information to your next request.If nextPageToken is returned, pass the value of nextPageToken to the pageToken to get next results. | [optional] 
**previous_page_token** | **String** | A generated string used to pass information to your next request.If previousPageToken is returned, pass the value of previousPageToken to the pageToken to get previous page results. | [optional] 
**jobs** | [**Array&lt;ServiceJob&gt;**](ServiceJob.md) | List of job details for the given input. | [optional] 


