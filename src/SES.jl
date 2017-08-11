#==============================================================================#
# SES.jl
#
# This file is generated from:
# https://github.com/aws/aws-sdk-js/blob/master/apis/email-2010-12-01.normal.json
#==============================================================================#

__precompile__()

module SES

using AWSCore


"""
    using AWSSDK.SES
    SES.clone_receipt_rule_set([::AWSConfig], arguments::Dict)
    SES.clone_receipt_rule_set([::AWSConfig]; RuleSetName=, OriginalRuleSetName=)

    using AWSCore.Services.email
    email([::AWSConfig], "CloneReceiptRuleSet", arguments::Dict)
    email([::AWSConfig], "CloneReceiptRuleSet", RuleSetName=, OriginalRuleSetName=)

# CloneReceiptRuleSet Operation

Creates a receipt rule set by cloning an existing one. All receipt rules and configurations are copied to the new receipt rule set and are completely independent of the source rule set.

For information about setting up rule sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the rule set to create. The name must:

*   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).

*   Start and end with a letter or number.

*   Contain less than 64 characters.


## `OriginalRuleSetName = ::String` -- *Required*
The name of the rule set to clone.




# Returns

`CloneReceiptRuleSetResponse`

# Exceptions

`RuleSetDoesNotExistException`, `AlreadyExistsException` or `LimitExceededException`.

# Example: CloneReceiptRuleSet

The following example creates a receipt rule set by cloning an existing one:

Input:
```
[
    "OriginalRuleSetName" => "RuleSetToClone",
    "RuleSetName" => "RuleSetToCreate"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CloneReceiptRuleSet)
"""

@inline clone_receipt_rule_set(aws::AWSConfig=default_aws_config(); args...) = clone_receipt_rule_set(aws, args)

@inline clone_receipt_rule_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "CloneReceiptRuleSet", args)

@inline clone_receipt_rule_set(args) = clone_receipt_rule_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.create_configuration_set([::AWSConfig], arguments::Dict)
    SES.create_configuration_set([::AWSConfig]; ConfigurationSet=)

    using AWSCore.Services.email
    email([::AWSConfig], "CreateConfigurationSet", arguments::Dict)
    email([::AWSConfig], "CreateConfigurationSet", ConfigurationSet=)

# CreateConfigurationSet Operation

Creates a configuration set.

Configuration sets enable you to publish email sending events. For information about using configuration sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

This action is throttled at one request per second.

# Arguments

## `ConfigurationSet = ["Name" => <required> ::String]` -- *Required*
A data structure that contains the name of the configuration set.




# Returns

`CreateConfigurationSetResponse`

# Exceptions

`ConfigurationSetAlreadyExistsException`, `InvalidConfigurationSetException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateConfigurationSet)
"""

@inline create_configuration_set(aws::AWSConfig=default_aws_config(); args...) = create_configuration_set(aws, args)

@inline create_configuration_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "CreateConfigurationSet", args)

@inline create_configuration_set(args) = create_configuration_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.create_configuration_set_event_destination([::AWSConfig], arguments::Dict)
    SES.create_configuration_set_event_destination([::AWSConfig]; ConfigurationSetName=, EventDestination=)

    using AWSCore.Services.email
    email([::AWSConfig], "CreateConfigurationSetEventDestination", arguments::Dict)
    email([::AWSConfig], "CreateConfigurationSetEventDestination", ConfigurationSetName=, EventDestination=)

# CreateConfigurationSetEventDestination Operation

Creates a configuration set event destination.

**Note**
> When you create or update an event destination, you must provide one, and only one, destination. The destination can be either Amazon CloudWatch or Amazon Kinesis Firehose.

An event destination is the AWS service to which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

This action is throttled at one request per second.

# Arguments

## `ConfigurationSetName = ::String` -- *Required*
The name of the configuration set to which to apply the event destination.


## `EventDestination = [ ... ]` -- *Required*
An object that describes the AWS service to which Amazon SES will publish the email sending events associated with the specified configuration set.
```
 EventDestination = [
        "Name" => <required> ::String,
        "Enabled" =>  ::Bool,
        "MatchingEventTypes" => <required> ["send", "reject", "bounce", "complaint" or "delivery", ...],
        "KinesisFirehoseDestination" =>  [
            "IAMRoleARN" => <required> ::String,
            "DeliveryStreamARN" => <required> ::String
        ],
        "CloudWatchDestination" =>  ["DimensionConfigurations" => <required> [[
                "DimensionName" => <required> ::String,
                "DimensionValueSource" => <required> "messageTag" or "emailHeader",
                "DefaultDimensionValue" => <required> ::String
            ], ...]]
    ]
```



# Returns

`CreateConfigurationSetEventDestinationResponse`

# Exceptions

`ConfigurationSetDoesNotExistException`, `EventDestinationAlreadyExistsException`, `InvalidCloudWatchDestinationException`, `InvalidFirehoseDestinationException` or `LimitExceededException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateConfigurationSetEventDestination)
"""

@inline create_configuration_set_event_destination(aws::AWSConfig=default_aws_config(); args...) = create_configuration_set_event_destination(aws, args)

@inline create_configuration_set_event_destination(aws::AWSConfig, args) = AWSCore.Services.email(aws, "CreateConfigurationSetEventDestination", args)

@inline create_configuration_set_event_destination(args) = create_configuration_set_event_destination(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.create_receipt_filter([::AWSConfig], arguments::Dict)
    SES.create_receipt_filter([::AWSConfig]; Filter=)

    using AWSCore.Services.email
    email([::AWSConfig], "CreateReceiptFilter", arguments::Dict)
    email([::AWSConfig], "CreateReceiptFilter", Filter=)

# CreateReceiptFilter Operation

Creates a new IP address filter.

For information about setting up IP address filters, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html).

This action is throttled at one request per second.

# Arguments

## `Filter = [ ... ]` -- *Required*
A data structure that describes the IP address filter to create, which consists of a name, an IP address range, and whether to allow or block mail from it.
```
 Filter = [
        "Name" => <required> ::String,
        "IpFilter" => <required> [
            "Policy" => <required> "Block" or "Allow",
            "Cidr" => <required> ::String
        ]
    ]
```



# Returns

`CreateReceiptFilterResponse`

# Exceptions

`LimitExceededException` or `AlreadyExistsException`.

# Example: CreateReceiptFilter

The following example creates a new IP address filter:

Input:
```
[
    "Filter" => [
        "IpFilter" => [
            "Cidr" => "1.2.3.4/24",
            "Policy" => "Allow"
        ],
        "Name" => "MyFilter"
    ]
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateReceiptFilter)
"""

@inline create_receipt_filter(aws::AWSConfig=default_aws_config(); args...) = create_receipt_filter(aws, args)

@inline create_receipt_filter(aws::AWSConfig, args) = AWSCore.Services.email(aws, "CreateReceiptFilter", args)

@inline create_receipt_filter(args) = create_receipt_filter(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.create_receipt_rule([::AWSConfig], arguments::Dict)
    SES.create_receipt_rule([::AWSConfig]; RuleSetName=, Rule=, <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "CreateReceiptRule", arguments::Dict)
    email([::AWSConfig], "CreateReceiptRule", RuleSetName=, Rule=, <keyword arguments>)

# CreateReceiptRule Operation

Creates a receipt rule.

For information about setting up receipt rules, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the rule set to which to add the rule.


## `After = ::String`
The name of an existing rule after which the new rule will be placed. If this parameter is null, the new rule will be inserted at the beginning of the rule list.


## `Rule = [ ... ]` -- *Required*
A data structure that contains the specified rule's name, actions, recipients, domains, enabled status, scan status, and TLS policy.
```
 Rule = [
        "Name" => <required> ::String,
        "Enabled" =>  ::Bool,
        "TlsPolicy" =>  "Require" or "Optional",
        "Recipients" =>  [::String, ...],
        "Actions" =>  [[
            "S3Action" =>  [
                "TopicArn" =>  ::String,
                "BucketName" => <required> ::String,
                "ObjectKeyPrefix" =>  ::String,
                "KmsKeyArn" =>  ::String
            ],
            "BounceAction" =>  [
                "TopicArn" =>  ::String,
                "SmtpReplyCode" => <required> ::String,
                "StatusCode" =>  ::String,
                "Message" => <required> ::String,
                "Sender" => <required> ::String
            ],
            "WorkmailAction" =>  [
                "TopicArn" =>  ::String,
                "OrganizationArn" => <required> ::String
            ],
            "LambdaAction" =>  [
                "TopicArn" =>  ::String,
                "FunctionArn" => <required> ::String,
                "InvocationType" =>  "Event" or "RequestResponse"
            ],
            "StopAction" =>  [
                "Scope" => <required> "RuleSet",
                "TopicArn" =>  ::String
            ],
            "AddHeaderAction" =>  [
                "HeaderName" => <required> ::String,
                "HeaderValue" => <required> ::String
            ],
            "SNSAction" =>  [
                "TopicArn" => <required> ::String,
                "Encoding" =>  "UTF-8" or "Base64"
            ]
        ], ...],
        "ScanEnabled" =>  ::Bool
    ]
```



# Returns

`CreateReceiptRuleResponse`

# Exceptions

`InvalidSnsTopicException`, `InvalidS3ConfigurationException`, `InvalidLambdaFunctionException`, `AlreadyExistsException`, `RuleDoesNotExistException`, `RuleSetDoesNotExistException` or `LimitExceededException`.

# Example: CreateReceiptRule

The following example creates a new receipt rule:

Input:
```
[
    "After" => "",
    "Rule" => [
        "Actions" => [
            [
                "S3Action" => [
                    "BucketName" => "MyBucket",
                    "ObjectKeyPrefix" => "email"
                ]
            ]
        ],
        "Enabled" => true,
        "Name" => "MyRule",
        "ScanEnabled" => true,
        "TlsPolicy" => "Optional"
    ],
    "RuleSetName" => "MyRuleSet"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateReceiptRule)
"""

@inline create_receipt_rule(aws::AWSConfig=default_aws_config(); args...) = create_receipt_rule(aws, args)

@inline create_receipt_rule(aws::AWSConfig, args) = AWSCore.Services.email(aws, "CreateReceiptRule", args)

@inline create_receipt_rule(args) = create_receipt_rule(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.create_receipt_rule_set([::AWSConfig], arguments::Dict)
    SES.create_receipt_rule_set([::AWSConfig]; RuleSetName=)

    using AWSCore.Services.email
    email([::AWSConfig], "CreateReceiptRuleSet", arguments::Dict)
    email([::AWSConfig], "CreateReceiptRuleSet", RuleSetName=)

# CreateReceiptRuleSet Operation

Creates an empty receipt rule set.

For information about setting up receipt rule sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the rule set to create. The name must:

*   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).

*   Start and end with a letter or number.

*   Contain less than 64 characters.




# Returns

`CreateReceiptRuleSetResponse`

# Exceptions

`AlreadyExistsException` or `LimitExceededException`.

# Example: CreateReceiptRuleSet

The following example creates an empty receipt rule set:

Input:
```
[
    "RuleSetName" => "MyRuleSet"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/CreateReceiptRuleSet)
"""

@inline create_receipt_rule_set(aws::AWSConfig=default_aws_config(); args...) = create_receipt_rule_set(aws, args)

@inline create_receipt_rule_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "CreateReceiptRuleSet", args)

@inline create_receipt_rule_set(args) = create_receipt_rule_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.delete_configuration_set([::AWSConfig], arguments::Dict)
    SES.delete_configuration_set([::AWSConfig]; ConfigurationSetName=)

    using AWSCore.Services.email
    email([::AWSConfig], "DeleteConfigurationSet", arguments::Dict)
    email([::AWSConfig], "DeleteConfigurationSet", ConfigurationSetName=)

# DeleteConfigurationSet Operation

Deletes a configuration set.

Configuration sets enable you to publish email sending events. For information about using configuration sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

This action is throttled at one request per second.

# Arguments

## `ConfigurationSetName = ::String` -- *Required*
The name of the configuration set to delete.




# Returns

`DeleteConfigurationSetResponse`

# Exceptions

`ConfigurationSetDoesNotExistException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteConfigurationSet)
"""

@inline delete_configuration_set(aws::AWSConfig=default_aws_config(); args...) = delete_configuration_set(aws, args)

@inline delete_configuration_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DeleteConfigurationSet", args)

@inline delete_configuration_set(args) = delete_configuration_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.delete_configuration_set_event_destination([::AWSConfig], arguments::Dict)
    SES.delete_configuration_set_event_destination([::AWSConfig]; ConfigurationSetName=, EventDestinationName=)

    using AWSCore.Services.email
    email([::AWSConfig], "DeleteConfigurationSetEventDestination", arguments::Dict)
    email([::AWSConfig], "DeleteConfigurationSetEventDestination", ConfigurationSetName=, EventDestinationName=)

# DeleteConfigurationSetEventDestination Operation

Deletes a configuration set event destination.

Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

This action is throttled at one request per second.

# Arguments

## `ConfigurationSetName = ::String` -- *Required*
The name of the configuration set from which to delete the event destination.


## `EventDestinationName = ::String` -- *Required*
The name of the event destination to delete.




# Returns

`DeleteConfigurationSetEventDestinationResponse`

# Exceptions

`ConfigurationSetDoesNotExistException` or `EventDestinationDoesNotExistException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteConfigurationSetEventDestination)
"""

@inline delete_configuration_set_event_destination(aws::AWSConfig=default_aws_config(); args...) = delete_configuration_set_event_destination(aws, args)

@inline delete_configuration_set_event_destination(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DeleteConfigurationSetEventDestination", args)

@inline delete_configuration_set_event_destination(args) = delete_configuration_set_event_destination(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.delete_identity([::AWSConfig], arguments::Dict)
    SES.delete_identity([::AWSConfig]; Identity=)

    using AWSCore.Services.email
    email([::AWSConfig], "DeleteIdentity", arguments::Dict)
    email([::AWSConfig], "DeleteIdentity", Identity=)

# DeleteIdentity Operation

Deletes the specified identity (an email address or a domain) from the list of verified identities.

This action is throttled at one request per second.

# Arguments

## `Identity = ::String` -- *Required*
The identity to be removed from the list of identities for the AWS Account.




# Returns

`DeleteIdentityResponse`

# Example: DeleteIdentity

The following example deletes an identity from the list of identities that have been submitted for verification with Amazon SES:

Input:
```
[
    "Identity" => "user@example.com"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteIdentity)
"""

@inline delete_identity(aws::AWSConfig=default_aws_config(); args...) = delete_identity(aws, args)

@inline delete_identity(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DeleteIdentity", args)

@inline delete_identity(args) = delete_identity(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.delete_identity_policy([::AWSConfig], arguments::Dict)
    SES.delete_identity_policy([::AWSConfig]; Identity=, PolicyName=)

    using AWSCore.Services.email
    email([::AWSConfig], "DeleteIdentityPolicy", arguments::Dict)
    email([::AWSConfig], "DeleteIdentityPolicy", Identity=, PolicyName=)

# DeleteIdentityPolicy Operation

Deletes the specified sending authorization policy for the given identity (an email address or a domain). This API returns successfully even if a policy with the specified name does not exist.

**Note**
> This API is for the identity owner only. If you have not verified the identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

This action is throttled at one request per second.

# Arguments

## `Identity = ::String` -- *Required*
The identity that is associated with the policy that you want to delete. You can specify the identity by using its name or by using its Amazon Resource Name (ARN). Examples: `user@example.com`, `example.com`, `arn:aws:ses:us-east-1:123456789012:identity/example.com`.

To successfully call this API, you must own the identity.


## `PolicyName = ::String` -- *Required*
The name of the policy to be deleted.




# Returns

`DeleteIdentityPolicyResponse`

# Example: DeleteIdentityPolicy

The following example deletes a sending authorization policy for an identity:

Input:
```
[
    "Identity" => "user@example.com",
    "PolicyName" => "MyPolicy"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteIdentityPolicy)
"""

@inline delete_identity_policy(aws::AWSConfig=default_aws_config(); args...) = delete_identity_policy(aws, args)

@inline delete_identity_policy(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DeleteIdentityPolicy", args)

@inline delete_identity_policy(args) = delete_identity_policy(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.delete_receipt_filter([::AWSConfig], arguments::Dict)
    SES.delete_receipt_filter([::AWSConfig]; FilterName=)

    using AWSCore.Services.email
    email([::AWSConfig], "DeleteReceiptFilter", arguments::Dict)
    email([::AWSConfig], "DeleteReceiptFilter", FilterName=)

# DeleteReceiptFilter Operation

Deletes the specified IP address filter.

For information about managing IP address filters, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html).

This action is throttled at one request per second.

# Arguments

## `FilterName = ::String` -- *Required*
The name of the IP address filter to delete.




# Returns

`DeleteReceiptFilterResponse`

# Example: DeleteReceiptFilter

The following example deletes an IP address filter:

Input:
```
[
    "FilterName" => "MyFilter"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteReceiptFilter)
"""

@inline delete_receipt_filter(aws::AWSConfig=default_aws_config(); args...) = delete_receipt_filter(aws, args)

@inline delete_receipt_filter(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DeleteReceiptFilter", args)

@inline delete_receipt_filter(args) = delete_receipt_filter(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.delete_receipt_rule([::AWSConfig], arguments::Dict)
    SES.delete_receipt_rule([::AWSConfig]; RuleSetName=, RuleName=)

    using AWSCore.Services.email
    email([::AWSConfig], "DeleteReceiptRule", arguments::Dict)
    email([::AWSConfig], "DeleteReceiptRule", RuleSetName=, RuleName=)

# DeleteReceiptRule Operation

Deletes the specified receipt rule.

For information about managing receipt rules, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the receipt rule set that contains the receipt rule to delete.


## `RuleName = ::String` -- *Required*
The name of the receipt rule to delete.




# Returns

`DeleteReceiptRuleResponse`

# Exceptions

`RuleSetDoesNotExistException`.

# Example: DeleteReceiptRule

The following example deletes a receipt rule:

Input:
```
[
    "RuleName" => "MyRule",
    "RuleSetName" => "MyRuleSet"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteReceiptRule)
"""

@inline delete_receipt_rule(aws::AWSConfig=default_aws_config(); args...) = delete_receipt_rule(aws, args)

@inline delete_receipt_rule(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DeleteReceiptRule", args)

@inline delete_receipt_rule(args) = delete_receipt_rule(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.delete_receipt_rule_set([::AWSConfig], arguments::Dict)
    SES.delete_receipt_rule_set([::AWSConfig]; RuleSetName=)

    using AWSCore.Services.email
    email([::AWSConfig], "DeleteReceiptRuleSet", arguments::Dict)
    email([::AWSConfig], "DeleteReceiptRuleSet", RuleSetName=)

# DeleteReceiptRuleSet Operation

Deletes the specified receipt rule set and all of the receipt rules it contains.

**Note**
> The currently active rule set cannot be deleted.

For information about managing receipt rule sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the receipt rule set to delete.




# Returns

`DeleteReceiptRuleSetResponse`

# Exceptions

`CannotDeleteException`.

# Example: DeleteReceiptRuleSet

The following example deletes a receipt rule set:

Input:
```
[
    "RuleSetName" => "MyRuleSet"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteReceiptRuleSet)
"""

@inline delete_receipt_rule_set(aws::AWSConfig=default_aws_config(); args...) = delete_receipt_rule_set(aws, args)

@inline delete_receipt_rule_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DeleteReceiptRuleSet", args)

@inline delete_receipt_rule_set(args) = delete_receipt_rule_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.delete_verified_email_address([::AWSConfig], arguments::Dict)
    SES.delete_verified_email_address([::AWSConfig]; EmailAddress=)

    using AWSCore.Services.email
    email([::AWSConfig], "DeleteVerifiedEmailAddress", arguments::Dict)
    email([::AWSConfig], "DeleteVerifiedEmailAddress", EmailAddress=)

# DeleteVerifiedEmailAddress Operation

Deletes the specified email address from the list of verified addresses.

**Important**
> The DeleteVerifiedEmailAddress action is deprecated as of the May 15, 2012 release of Domain Verification. The DeleteIdentity action is now preferred.

This action is throttled at one request per second.

# Arguments

## `EmailAddress = ::String` -- *Required*
An email address to be removed from the list of verified addresses.




# Example: DeleteVerifiedEmailAddress

The following example deletes an email address from the list of identities that have been submitted for verification with Amazon SES:

Input:
```
[
    "EmailAddress" => "user@example.com"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DeleteVerifiedEmailAddress)
"""

@inline delete_verified_email_address(aws::AWSConfig=default_aws_config(); args...) = delete_verified_email_address(aws, args)

@inline delete_verified_email_address(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DeleteVerifiedEmailAddress", args)

@inline delete_verified_email_address(args) = delete_verified_email_address(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.describe_active_receipt_rule_set([::AWSConfig], arguments::Dict)
    SES.describe_active_receipt_rule_set([::AWSConfig]; )

    using AWSCore.Services.email
    email([::AWSConfig], "DescribeActiveReceiptRuleSet", arguments::Dict)
    email([::AWSConfig], "DescribeActiveReceiptRuleSet", )

# DescribeActiveReceiptRuleSet Operation

Returns the metadata and receipt rules for the receipt rule set that is currently active.

For information about setting up receipt rule sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html).

This action is throttled at one request per second.

# Arguments



# Returns

`DescribeActiveReceiptRuleSetResponse`

# Example: DescribeActiveReceiptRuleSet

The following example returns the metadata and receipt rules for the receipt rule set that is currently active:

Input:
```
[

]
```

Output:
```
Dict(
    "Metadata" => Dict(
        "CreatedTimestamp" => "2016-07-15T16:25:59.607Z",
        "Name" => "default-rule-set"
    ),
    "Rules" => [
        Dict(
            "Actions" => [
                Dict(
                    "S3Action" => Dict(
                        "BucketName" => "MyBucket",
                        "ObjectKeyPrefix" => "email"
                    )
                )
            ],
            "Enabled" => true,
            "Name" => "MyRule",
            "ScanEnabled" => true,
            "TlsPolicy" => "Optional"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DescribeActiveReceiptRuleSet)
"""

@inline describe_active_receipt_rule_set(aws::AWSConfig=default_aws_config(); args...) = describe_active_receipt_rule_set(aws, args)

@inline describe_active_receipt_rule_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DescribeActiveReceiptRuleSet", args)

@inline describe_active_receipt_rule_set(args) = describe_active_receipt_rule_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.describe_configuration_set([::AWSConfig], arguments::Dict)
    SES.describe_configuration_set([::AWSConfig]; ConfigurationSetName=, <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "DescribeConfigurationSet", arguments::Dict)
    email([::AWSConfig], "DescribeConfigurationSet", ConfigurationSetName=, <keyword arguments>)

# DescribeConfigurationSet Operation

Returns the details of the specified configuration set.

Configuration sets enable you to publish email sending events. For information about using configuration sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

This action is throttled at one request per second.

# Arguments

## `ConfigurationSetName = ::String` -- *Required*
The name of the configuration set to describe.


## `ConfigurationSetAttributeNames = ["eventDestinations", ...]`
A list of configuration set attributes to return.




# Returns

`DescribeConfigurationSetResponse`

# Exceptions

`ConfigurationSetDoesNotExistException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DescribeConfigurationSet)
"""

@inline describe_configuration_set(aws::AWSConfig=default_aws_config(); args...) = describe_configuration_set(aws, args)

@inline describe_configuration_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DescribeConfigurationSet", args)

@inline describe_configuration_set(args) = describe_configuration_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.describe_receipt_rule([::AWSConfig], arguments::Dict)
    SES.describe_receipt_rule([::AWSConfig]; RuleSetName=, RuleName=)

    using AWSCore.Services.email
    email([::AWSConfig], "DescribeReceiptRule", arguments::Dict)
    email([::AWSConfig], "DescribeReceiptRule", RuleSetName=, RuleName=)

# DescribeReceiptRule Operation

Returns the details of the specified receipt rule.

For information about setting up receipt rules, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the receipt rule set to which the receipt rule belongs.


## `RuleName = ::String` -- *Required*
The name of the receipt rule.




# Returns

`DescribeReceiptRuleResponse`

# Exceptions

`RuleDoesNotExistException` or `RuleSetDoesNotExistException`.

# Example: DescribeReceiptRule

The following example returns the details of a receipt rule:

Input:
```
[
    "RuleName" => "MyRule",
    "RuleSetName" => "MyRuleSet"
]
```

Output:
```
Dict(
    "Rule" => Dict(
        "Actions" => [
            Dict(
                "S3Action" => Dict(
                    "BucketName" => "MyBucket",
                    "ObjectKeyPrefix" => "email"
                )
            )
        ],
        "Enabled" => true,
        "Name" => "MyRule",
        "ScanEnabled" => true,
        "TlsPolicy" => "Optional"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DescribeReceiptRule)
"""

@inline describe_receipt_rule(aws::AWSConfig=default_aws_config(); args...) = describe_receipt_rule(aws, args)

@inline describe_receipt_rule(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DescribeReceiptRule", args)

@inline describe_receipt_rule(args) = describe_receipt_rule(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.describe_receipt_rule_set([::AWSConfig], arguments::Dict)
    SES.describe_receipt_rule_set([::AWSConfig]; RuleSetName=)

    using AWSCore.Services.email
    email([::AWSConfig], "DescribeReceiptRuleSet", arguments::Dict)
    email([::AWSConfig], "DescribeReceiptRuleSet", RuleSetName=)

# DescribeReceiptRuleSet Operation

Returns the details of the specified receipt rule set.

For information about managing receipt rule sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the receipt rule set to describe.




# Returns

`DescribeReceiptRuleSetResponse`

# Exceptions

`RuleSetDoesNotExistException`.

# Example: DescribeReceiptRuleSet

The following example returns the metadata and receipt rules of a receipt rule set:

Input:
```
[
    "RuleSetName" => "MyRuleSet"
]
```

Output:
```
Dict(
    "Metadata" => Dict(
        "CreatedTimestamp" => "2016-07-15T16:25:59.607Z",
        "Name" => "MyRuleSet"
    ),
    "Rules" => [
        Dict(
            "Actions" => [
                Dict(
                    "S3Action" => Dict(
                        "BucketName" => "MyBucket",
                        "ObjectKeyPrefix" => "email"
                    )
                )
            ],
            "Enabled" => true,
            "Name" => "MyRule",
            "ScanEnabled" => true,
            "TlsPolicy" => "Optional"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/DescribeReceiptRuleSet)
"""

@inline describe_receipt_rule_set(aws::AWSConfig=default_aws_config(); args...) = describe_receipt_rule_set(aws, args)

@inline describe_receipt_rule_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "DescribeReceiptRuleSet", args)

@inline describe_receipt_rule_set(args) = describe_receipt_rule_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.get_identity_dkim_attributes([::AWSConfig], arguments::Dict)
    SES.get_identity_dkim_attributes([::AWSConfig]; Identities=)

    using AWSCore.Services.email
    email([::AWSConfig], "GetIdentityDkimAttributes", arguments::Dict)
    email([::AWSConfig], "GetIdentityDkimAttributes", Identities=)

# GetIdentityDkimAttributes Operation

Returns the current status of Easy DKIM signing for an entity. For domain name identities, this action also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES has successfully verified that these tokens have been published.

This action takes a list of identities as input and returns the following information for each:

*   Whether Easy DKIM signing is enabled or disabled.

*   A set of DKIM tokens that represent the identity. If the identity is an email address, the tokens represent the domain of that address.

*   Whether Amazon SES has successfully verified the DKIM tokens published in the domain's DNS. This information is only returned for domain name identities, not for email addresses.

This action is throttled at one request per second and can only get DKIM attributes for up to 100 identities at a time.

For more information about creating DNS records using DKIM tokens, go to the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html).

# Arguments

## `Identities = [::String, ...]` -- *Required*
A list of one or more verified identities - email addresses, domains, or both.




# Returns

`GetIdentityDkimAttributesResponse`

# Example: GetIdentityDkimAttributes

The following example retrieves the Amazon SES Easy DKIM attributes for a list of identities:

Input:
```
[
    "Identities" => [
        "example.com",
        "user@example.com"
    ]
]
```

Output:
```
Dict(
    "DkimAttributes" => Dict(
        "example.com" => Dict(
            "DkimEnabled" => true,
            "DkimTokens" => [
                "EXAMPLEjcs5xoyqytjsotsijas7236gr",
                "EXAMPLEjr76cvoc6mysspnioorxsn6ep",
                "EXAMPLEkbmkqkhlm2lyz77ppkulerm4k"
            ],
            "DkimVerificationStatus" => "Success"
        ),
        "user@example.com" => Dict(
            "DkimEnabled" => false,
            "DkimVerificationStatus" => "NotStarted"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityDkimAttributes)
"""

@inline get_identity_dkim_attributes(aws::AWSConfig=default_aws_config(); args...) = get_identity_dkim_attributes(aws, args)

@inline get_identity_dkim_attributes(aws::AWSConfig, args) = AWSCore.Services.email(aws, "GetIdentityDkimAttributes", args)

@inline get_identity_dkim_attributes(args) = get_identity_dkim_attributes(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.get_identity_mail_from_domain_attributes([::AWSConfig], arguments::Dict)
    SES.get_identity_mail_from_domain_attributes([::AWSConfig]; Identities=)

    using AWSCore.Services.email
    email([::AWSConfig], "GetIdentityMailFromDomainAttributes", arguments::Dict)
    email([::AWSConfig], "GetIdentityMailFromDomainAttributes", Identities=)

# GetIdentityMailFromDomainAttributes Operation

Returns the custom MAIL FROM attributes for a list of identities (email addresses and/or domains).

This action is throttled at one request per second and can only get custom MAIL FROM attributes for up to 100 identities at a time.

# Arguments

## `Identities = [::String, ...]` -- *Required*
A list of one or more identities.




# Returns

`GetIdentityMailFromDomainAttributesResponse`

# Example: GetIdentityMailFromDomainAttributes

The following example returns the custom MAIL FROM attributes for an identity:

Input:
```
[
    "Identities" => [
        "example.com"
    ]
]
```

Output:
```
Dict(
    "MailFromDomainAttributes" => Dict(
        "example.com" => Dict(
            "BehaviorOnMXFailure" => "UseDefaultValue",
            "MailFromDomain" => "bounces.example.com",
            "MailFromDomainStatus" => "Success"
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityMailFromDomainAttributes)
"""

@inline get_identity_mail_from_domain_attributes(aws::AWSConfig=default_aws_config(); args...) = get_identity_mail_from_domain_attributes(aws, args)

@inline get_identity_mail_from_domain_attributes(aws::AWSConfig, args) = AWSCore.Services.email(aws, "GetIdentityMailFromDomainAttributes", args)

@inline get_identity_mail_from_domain_attributes(args) = get_identity_mail_from_domain_attributes(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.get_identity_notification_attributes([::AWSConfig], arguments::Dict)
    SES.get_identity_notification_attributes([::AWSConfig]; Identities=)

    using AWSCore.Services.email
    email([::AWSConfig], "GetIdentityNotificationAttributes", arguments::Dict)
    email([::AWSConfig], "GetIdentityNotificationAttributes", Identities=)

# GetIdentityNotificationAttributes Operation

Given a list of verified identities (email addresses and/or domains), returns a structure describing identity notification attributes.

This action is throttled at one request per second and can only get notification attributes for up to 100 identities at a time.

For more information about using notifications with Amazon SES, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).

# Arguments

## `Identities = [::String, ...]` -- *Required*
A list of one or more identities. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: `user@example.com`, `example.com`, `arn:aws:ses:us-east-1:123456789012:identity/example.com`.




# Returns

`GetIdentityNotificationAttributesResponse`

# Example: GetIdentityNotificationAttributes

The following example returns the notification attributes for an identity:

Input:
```
[
    "Identities" => [
        "example.com"
    ]
]
```

Output:
```
Dict(
    "NotificationAttributes" => Dict(
        "example.com" => Dict(
            "BounceTopic" => "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic",
            "ComplaintTopic" => "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic",
            "DeliveryTopic" => "arn:aws:sns:us-east-1:EXAMPLE65304:ExampleTopic",
            "ForwardingEnabled" => true,
            "HeadersInBounceNotificationsEnabled" => false,
            "HeadersInComplaintNotificationsEnabled" => false,
            "HeadersInDeliveryNotificationsEnabled" => false
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityNotificationAttributes)
"""

@inline get_identity_notification_attributes(aws::AWSConfig=default_aws_config(); args...) = get_identity_notification_attributes(aws, args)

@inline get_identity_notification_attributes(aws::AWSConfig, args) = AWSCore.Services.email(aws, "GetIdentityNotificationAttributes", args)

@inline get_identity_notification_attributes(args) = get_identity_notification_attributes(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.get_identity_policies([::AWSConfig], arguments::Dict)
    SES.get_identity_policies([::AWSConfig]; Identity=, PolicyNames=)

    using AWSCore.Services.email
    email([::AWSConfig], "GetIdentityPolicies", arguments::Dict)
    email([::AWSConfig], "GetIdentityPolicies", Identity=, PolicyNames=)

# GetIdentityPolicies Operation

Returns the requested sending authorization policies for the given identity (an email address or a domain). The policies are returned as a map of policy names to policy contents. You can retrieve a maximum of 20 policies at a time.

**Note**
> This API is for the identity owner only. If you have not verified the identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

This action is throttled at one request per second.

# Arguments

## `Identity = ::String` -- *Required*
The identity for which the policies will be retrieved. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: `user@example.com`, `example.com`, `arn:aws:ses:us-east-1:123456789012:identity/example.com`.

To successfully call this API, you must own the identity.


## `PolicyNames = [::String, ...]` -- *Required*
A list of the names of policies to be retrieved. You can retrieve a maximum of 20 policies at a time. If you do not know the names of the policies that are attached to the identity, you can use `ListIdentityPolicies`.




# Returns

`GetIdentityPoliciesResponse`

# Example: GetIdentityPolicies

The following example returns a sending authorization policy for an identity:

Input:
```
[
    "Identity" => "example.com",
    "PolicyNames" => [
        "MyPolicy"
    ]
]
```

Output:
```
Dict(
    "Policies" => Dict(
        "MyPolicy" => "{"Version":"2008-10-17","Statement":[{"Sid":"stmt1469123904194","Effect":"Allow","Principal":{"AWS":"arn:aws:iam::123456789012:root"},"Action":["ses:SendEmail","ses:SendRawEmail"],"Resource":"arn:aws:ses:us-east-1:EXAMPLE65304:identity/example.com"}]}"
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityPolicies)
"""

@inline get_identity_policies(aws::AWSConfig=default_aws_config(); args...) = get_identity_policies(aws, args)

@inline get_identity_policies(aws::AWSConfig, args) = AWSCore.Services.email(aws, "GetIdentityPolicies", args)

@inline get_identity_policies(args) = get_identity_policies(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.get_identity_verification_attributes([::AWSConfig], arguments::Dict)
    SES.get_identity_verification_attributes([::AWSConfig]; Identities=)

    using AWSCore.Services.email
    email([::AWSConfig], "GetIdentityVerificationAttributes", arguments::Dict)
    email([::AWSConfig], "GetIdentityVerificationAttributes", Identities=)

# GetIdentityVerificationAttributes Operation

Given a list of identities (email addresses and/or domains), returns the verification status and (for domain identities) the verification token for each identity.

This action is throttled at one request per second and can only get verification attributes for up to 100 identities at a time.

# Arguments

## `Identities = [::String, ...]` -- *Required*
A list of identities.




# Returns

`GetIdentityVerificationAttributesResponse`

# Example: GetIdentityVerificationAttributes

The following example returns the verification status and the verification token for a domain identity:

Input:
```
[
    "Identities" => [
        "example.com"
    ]
]
```

Output:
```
Dict(
    "VerificationAttributes" => Dict(
        "example.com" => Dict(
            "VerificationStatus" => "Success",
            "VerificationToken" => "EXAMPLE3VYb9EDI2nTOQRi/Tf6MI/6bD6THIGiP1MVY="
        )
    )
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetIdentityVerificationAttributes)
"""

@inline get_identity_verification_attributes(aws::AWSConfig=default_aws_config(); args...) = get_identity_verification_attributes(aws, args)

@inline get_identity_verification_attributes(aws::AWSConfig, args) = AWSCore.Services.email(aws, "GetIdentityVerificationAttributes", args)

@inline get_identity_verification_attributes(args) = get_identity_verification_attributes(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.get_send_quota([::AWSConfig])
    SES.

    using AWSCore.Services.email
    email([::AWSConfig], "GetSendQuota",)
    

# GetSendQuota Operation

Returns the user's current sending limits.

This action is throttled at one request per second.

# Returns

`GetSendQuotaResponse`

# Example: GetSendQuota

The following example returns the Amazon SES sending limits for an AWS account:

Output:
```
Dict(
    "Max24HourSend" => 200,
    "MaxSendRate" => 1,
    "SentLast24Hours" => 1
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetSendQuota)
"""

@inline get_send_quota(aws::AWSConfig=default_aws_config(); args...) = get_send_quota(aws, args)

@inline get_send_quota(aws::AWSConfig, args) = AWSCore.Services.email(aws, "GetSendQuota", args)

@inline get_send_quota(args) = get_send_quota(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.get_send_statistics([::AWSConfig])
    SES.

    using AWSCore.Services.email
    email([::AWSConfig], "GetSendStatistics",)
    

# GetSendStatistics Operation

Returns the user's sending statistics. The result is a list of data points, representing the last two weeks of sending activity.

Each data point in the list contains statistics for a 15-minute interval.

This action is throttled at one request per second.

# Returns

`GetSendStatisticsResponse`

# Example: GetSendStatistics

The following example returns Amazon SES sending statistics:

Output:
```
Dict(
    "SendDataPoints" => [
        Dict(
            "Bounces" => 0,
            "Complaints" => 0,
            "DeliveryAttempts" => 5,
            "Rejects" => 0,
            "Timestamp" => "2016-07-13T22:43:00Z"
        ),
        Dict(
            "Bounces" => 0,
            "Complaints" => 0,
            "DeliveryAttempts" => 3,
            "Rejects" => 0,
            "Timestamp" => "2016-07-13T23:13:00Z"
        ),
        Dict(
            "Bounces" => 0,
            "Complaints" => 0,
            "DeliveryAttempts" => 1,
            "Rejects" => 0,
            "Timestamp" => "2016-07-13T21:13:00Z"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/GetSendStatistics)
"""

@inline get_send_statistics(aws::AWSConfig=default_aws_config(); args...) = get_send_statistics(aws, args)

@inline get_send_statistics(aws::AWSConfig, args) = AWSCore.Services.email(aws, "GetSendStatistics", args)

@inline get_send_statistics(args) = get_send_statistics(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.list_configuration_sets([::AWSConfig], arguments::Dict)
    SES.list_configuration_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "ListConfigurationSets", arguments::Dict)
    email([::AWSConfig], "ListConfigurationSets", <keyword arguments>)

# ListConfigurationSets Operation

Lists the configuration sets associated with your AWS account.

Configuration sets enable you to publish email sending events. For information about using configuration sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

This action is throttled at one request per second and can return up to 50 configuration sets at a time.

# Arguments

## `NextToken = ::String`
A token returned from a previous call to `ListConfigurationSets` to indicate the position of the configuration set in the configuration set list.


## `MaxItems = ::Int`
The number of configuration sets to return.




# Returns

`ListConfigurationSetsResponse`

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListConfigurationSets)
"""

@inline list_configuration_sets(aws::AWSConfig=default_aws_config(); args...) = list_configuration_sets(aws, args)

@inline list_configuration_sets(aws::AWSConfig, args) = AWSCore.Services.email(aws, "ListConfigurationSets", args)

@inline list_configuration_sets(args) = list_configuration_sets(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.list_identities([::AWSConfig], arguments::Dict)
    SES.list_identities([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "ListIdentities", arguments::Dict)
    email([::AWSConfig], "ListIdentities", <keyword arguments>)

# ListIdentities Operation

Returns a list containing all of the identities (email addresses and domains) for your AWS account, regardless of verification status.

This action is throttled at one request per second.

# Arguments

## `IdentityType = "EmailAddress" or "Domain"`
The type of the identities to list. Possible values are "EmailAddress" and "Domain". If this parameter is omitted, then all identities will be listed.


## `NextToken = ::String`
The token to use for pagination.


## `MaxItems = ::Int`
The maximum number of identities per page. Possible values are 1-1000 inclusive.




# Returns

`ListIdentitiesResponse`

# Example: ListIdentities

The following example lists the email address identities that have been submitted for verification with Amazon SES:

Input:
```
[
    "IdentityType" => "EmailAddress",
    "MaxItems" => 123,
    "NextToken" => ""
]
```

Output:
```
Dict(
    "Identities" => [
        "user@example.com"
    ],
    "NextToken" => ""
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListIdentities)
"""

@inline list_identities(aws::AWSConfig=default_aws_config(); args...) = list_identities(aws, args)

@inline list_identities(aws::AWSConfig, args) = AWSCore.Services.email(aws, "ListIdentities", args)

@inline list_identities(args) = list_identities(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.list_identity_policies([::AWSConfig], arguments::Dict)
    SES.list_identity_policies([::AWSConfig]; Identity=)

    using AWSCore.Services.email
    email([::AWSConfig], "ListIdentityPolicies", arguments::Dict)
    email([::AWSConfig], "ListIdentityPolicies", Identity=)

# ListIdentityPolicies Operation

Returns a list of sending authorization policies that are attached to the given identity (an email address or a domain). This API returns only a list. If you want the actual policy content, you can use `GetIdentityPolicies`.

**Note**
> This API is for the identity owner only. If you have not verified the identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

This action is throttled at one request per second.

# Arguments

## `Identity = ::String` -- *Required*
The identity that is associated with the policy for which the policies will be listed. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: `user@example.com`, `example.com`, `arn:aws:ses:us-east-1:123456789012:identity/example.com`.

To successfully call this API, you must own the identity.




# Returns

`ListIdentityPoliciesResponse`

# Example: ListIdentityPolicies

The following example returns a list of sending authorization policies that are attached to an identity:

Input:
```
[
    "Identity" => "example.com"
]
```

Output:
```
Dict(
    "PolicyNames" => [
        "MyPolicy"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListIdentityPolicies)
"""

@inline list_identity_policies(aws::AWSConfig=default_aws_config(); args...) = list_identity_policies(aws, args)

@inline list_identity_policies(aws::AWSConfig, args) = AWSCore.Services.email(aws, "ListIdentityPolicies", args)

@inline list_identity_policies(args) = list_identity_policies(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.list_receipt_filters([::AWSConfig], arguments::Dict)
    SES.list_receipt_filters([::AWSConfig]; )

    using AWSCore.Services.email
    email([::AWSConfig], "ListReceiptFilters", arguments::Dict)
    email([::AWSConfig], "ListReceiptFilters", )

# ListReceiptFilters Operation

Lists the IP address filters associated with your AWS account.

For information about managing IP address filters, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html).

This action is throttled at one request per second.

# Arguments



# Returns

`ListReceiptFiltersResponse`

# Example: ListReceiptFilters

The following example lists the IP address filters that are associated with an AWS account:

Output:
```
Dict(
    "Filters" => [
        Dict(
            "IpFilter" => Dict(
                "Cidr" => "1.2.3.4/24",
                "Policy" => "Block"
            ),
            "Name" => "MyFilter"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListReceiptFilters)
"""

@inline list_receipt_filters(aws::AWSConfig=default_aws_config(); args...) = list_receipt_filters(aws, args)

@inline list_receipt_filters(aws::AWSConfig, args) = AWSCore.Services.email(aws, "ListReceiptFilters", args)

@inline list_receipt_filters(args) = list_receipt_filters(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.list_receipt_rule_sets([::AWSConfig], arguments::Dict)
    SES.list_receipt_rule_sets([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "ListReceiptRuleSets", arguments::Dict)
    email([::AWSConfig], "ListReceiptRuleSets", <keyword arguments>)

# ListReceiptRuleSets Operation

Lists the receipt rule sets that exist under your AWS account. If there are additional receipt rule sets to be retrieved, you will receive a `NextToken` that you can provide to the next call to `ListReceiptRuleSets` to retrieve the additional entries.

For information about managing receipt rule sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

This action is throttled at one request per second.

# Arguments

## `NextToken = ::String`
A token returned from a previous call to `ListReceiptRuleSets` to indicate the position in the receipt rule set list.




# Returns

`ListReceiptRuleSetsResponse`

# Example: ListReceiptRuleSets

The following example lists the receipt rule sets that exist under an AWS account:

Input:
```
[
    "NextToken" => ""
]
```

Output:
```
Dict(
    "NextToken" => "",
    "RuleSets" => [
        Dict(
            "CreatedTimestamp" => "2016-07-15T16:25:59.607Z",
            "Name" => "MyRuleSet"
        )
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListReceiptRuleSets)
"""

@inline list_receipt_rule_sets(aws::AWSConfig=default_aws_config(); args...) = list_receipt_rule_sets(aws, args)

@inline list_receipt_rule_sets(aws::AWSConfig, args) = AWSCore.Services.email(aws, "ListReceiptRuleSets", args)

@inline list_receipt_rule_sets(args) = list_receipt_rule_sets(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.list_verified_email_addresses([::AWSConfig])
    SES.

    using AWSCore.Services.email
    email([::AWSConfig], "ListVerifiedEmailAddresses",)
    

# ListVerifiedEmailAddresses Operation

Returns a list containing all of the email addresses that have been verified.

**Important**
> The ListVerifiedEmailAddresses action is deprecated as of the May 15, 2012 release of Domain Verification. The ListIdentities action is now preferred.

This action is throttled at one request per second.

# Returns

`ListVerifiedEmailAddressesResponse`

# Example: ListVerifiedEmailAddresses

The following example lists all email addresses that have been submitted for verification with Amazon SES:

Output:
```
Dict(
    "VerifiedEmailAddresses" => [
        "user1@example.com",
        "user2@example.com"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ListVerifiedEmailAddresses)
"""

@inline list_verified_email_addresses(aws::AWSConfig=default_aws_config(); args...) = list_verified_email_addresses(aws, args)

@inline list_verified_email_addresses(aws::AWSConfig, args) = AWSCore.Services.email(aws, "ListVerifiedEmailAddresses", args)

@inline list_verified_email_addresses(args) = list_verified_email_addresses(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.put_identity_policy([::AWSConfig], arguments::Dict)
    SES.put_identity_policy([::AWSConfig]; Identity=, PolicyName=, Policy=)

    using AWSCore.Services.email
    email([::AWSConfig], "PutIdentityPolicy", arguments::Dict)
    email([::AWSConfig], "PutIdentityPolicy", Identity=, PolicyName=, Policy=)

# PutIdentityPolicy Operation

Adds or updates a sending authorization policy for the specified identity (an email address or a domain).

**Note**
> This API is for the identity owner only. If you have not verified the identity, this API will return an error.

Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

This action is throttled at one request per second.

# Arguments

## `Identity = ::String` -- *Required*
The identity to which the policy will apply. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: `user@example.com`, `example.com`, `arn:aws:ses:us-east-1:123456789012:identity/example.com`.

To successfully call this API, you must own the identity.


## `PolicyName = ::String` -- *Required*
The name of the policy.

The policy name cannot exceed 64 characters and can only include alphanumeric characters, dashes, and underscores.


## `Policy = ::String` -- *Required*
The text of the policy in JSON format. The policy cannot exceed 4 KB.

For information about the syntax of sending authorization policies, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html).




# Returns

`PutIdentityPolicyResponse`

# Exceptions

`InvalidPolicyException`.

# Example: PutIdentityPolicy

The following example adds a sending authorization policy to an identity:

Input:
```
[
    "Identity" => "example.com",
    "Policy" => "{"Version":"2008-10-17","Statement":[{"Sid":"stmt1469123904194","Effect":"Allow","Principal":{"AWS":"arn:aws:iam::123456789012:root"},"Action":["ses:SendEmail","ses:SendRawEmail"],"Resource":"arn:aws:ses:us-east-1:EXAMPLE65304:identity/example.com"}]}",
    "PolicyName" => "MyPolicy"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/PutIdentityPolicy)
"""

@inline put_identity_policy(aws::AWSConfig=default_aws_config(); args...) = put_identity_policy(aws, args)

@inline put_identity_policy(aws::AWSConfig, args) = AWSCore.Services.email(aws, "PutIdentityPolicy", args)

@inline put_identity_policy(args) = put_identity_policy(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.reorder_receipt_rule_set([::AWSConfig], arguments::Dict)
    SES.reorder_receipt_rule_set([::AWSConfig]; RuleSetName=, RuleNames=)

    using AWSCore.Services.email
    email([::AWSConfig], "ReorderReceiptRuleSet", arguments::Dict)
    email([::AWSConfig], "ReorderReceiptRuleSet", RuleSetName=, RuleNames=)

# ReorderReceiptRuleSet Operation

Reorders the receipt rules within a receipt rule set.

**Note**
> All of the rules in the rule set must be represented in this request. That is, this API will return an error if the reorder request doesn't explicitly position all of the rules.

For information about managing receipt rule sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the receipt rule set to reorder.


## `RuleNames = [::String, ...]` -- *Required*
A list of the specified receipt rule set's receipt rules in the order that you want to put them.




# Returns

`ReorderReceiptRuleSetResponse`

# Exceptions

`RuleSetDoesNotExistException` or `RuleDoesNotExistException`.

# Example: ReorderReceiptRuleSet

The following example reorders the receipt rules within a receipt rule set:

Input:
```
[
    "RuleNames" => [
        "MyRule",
        "MyOtherRule"
    ],
    "RuleSetName" => "MyRuleSet"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/ReorderReceiptRuleSet)
"""

@inline reorder_receipt_rule_set(aws::AWSConfig=default_aws_config(); args...) = reorder_receipt_rule_set(aws, args)

@inline reorder_receipt_rule_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "ReorderReceiptRuleSet", args)

@inline reorder_receipt_rule_set(args) = reorder_receipt_rule_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.send_bounce([::AWSConfig], arguments::Dict)
    SES.send_bounce([::AWSConfig]; OriginalMessageId=, BounceSender=, BouncedRecipientInfoList=, <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "SendBounce", arguments::Dict)
    email([::AWSConfig], "SendBounce", OriginalMessageId=, BounceSender=, BouncedRecipientInfoList=, <keyword arguments>)

# SendBounce Operation

Generates and sends a bounce message to the sender of an email you received through Amazon SES. You can only use this API on an email up to 24 hours after you receive it.

**Note**
> You cannot use this API to send generic bounces for mail that was not received by Amazon SES.

For information about receiving email through Amazon SES, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html).

This action is throttled at one request per second.

# Arguments

## `OriginalMessageId = ::String` -- *Required*
The message ID of the message to be bounced.


## `BounceSender = ::String` -- *Required*
The address to use in the "From" header of the bounce message. This must be an identity that you have verified with Amazon SES.


## `Explanation = ::String`
Human-readable text for the bounce message to explain the failure. If not specified, the text will be auto-generated based on the bounced recipient information.


## `MessageDsn = [ ... ]`
Message-related DSN fields. If not specified, Amazon SES will choose the values.
```
 MessageDsn = [
        "ReportingMta" => <required> ::String,
        "ArrivalDate" =>  timestamp,
        "ExtensionFields" =>  [[
            "Name" => <required> ::String,
            "Value" => <required> ::String
        ], ...]
    ]
```

## `BouncedRecipientInfoList = [[ ... ], ...]` -- *Required*
A list of recipients of the bounced message, including the information required to create the Delivery Status Notifications (DSNs) for the recipients. You must specify at least one `BouncedRecipientInfo` in the list.
```
 BouncedRecipientInfoList = [[
        "Recipient" => <required> ::String,
        "RecipientArn" =>  ::String,
        "BounceType" =>  "DoesNotExist", "MessageTooLarge", "ExceededQuota", "ContentRejected", "Undefined" or "TemporaryFailure",
        "RecipientDsnFields" =>  [
            "FinalRecipient" =>  ::String,
            "Action" => <required> "failed", "delayed", "delivered", "relayed" or "expanded",
            "RemoteMta" =>  ::String,
            "Status" => <required> ::String,
            "DiagnosticCode" =>  ::String,
            "LastAttemptDate" =>  timestamp,
            "ExtensionFields" =>  [[
                "Name" => <required> ::String,
                "Value" => <required> ::String
            ], ...]
        ]
    ], ...]
```

## `BounceSenderArn = ::String`
This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the address in the "From" header of the bounce. For more information about sending authorization, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).




# Returns

`SendBounceResponse`

# Exceptions

`MessageRejected`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SendBounce)
"""

@inline send_bounce(aws::AWSConfig=default_aws_config(); args...) = send_bounce(aws, args)

@inline send_bounce(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SendBounce", args)

@inline send_bounce(args) = send_bounce(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.send_email([::AWSConfig], arguments::Dict)
    SES.send_email([::AWSConfig]; Source=, Destination=, Message=, <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "SendEmail", arguments::Dict)
    email([::AWSConfig], "SendEmail", Source=, Destination=, Message=, <keyword arguments>)

# SendEmail Operation

Composes an email message based on input data, and then immediately queues the message for sending.

There are several important points to know about `SendEmail`:

*   You can only send email from verified email addresses and domains; otherwise, you will get an "Email address not verified" error. If your account is still in the Amazon SES sandbox, you must also verify every recipient email address except for the recipients provided by the Amazon SES mailbox simulator. For more information, go to the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html).

*   The total size of the message cannot exceed 10 MB. This includes any attachments that are part of the message.

*   Amazon SES has a limit on the total number of recipients per message. The combined number of To:, CC: and BCC: email addresses cannot exceed 50\. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call Amazon SES repeatedly to send the message to each group.

*   For every message that you send, the total number of recipients (To:, CC: and BCC:) is counted against your sending quota - the maximum number of emails you can send in a 24-hour period. For information about your sending quota, go to the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html).

# Arguments

## `Source = ::String` -- *Required*
The email address that is sending the email. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. For information about verifying identities, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html).

If you are sending on behalf of another user and have been permitted to do so by a sending authorization policy, then you must also specify the `SourceArn` parameter. For more information about sending authorization, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

In all cases, the email address must be 7-bit ASCII. If the text must contain any other characters, then you must use MIME encoded-word syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax uses the following form: `=?charset?encoding?encoded-text?=`. For more information, see [RFC 2047](http://tools.ietf.org/html/rfc2047).


## `Destination = [ ... ]` -- *Required*
The destination for this email, composed of To:, CC:, and BCC: fields.
```
 Destination = [
        "ToAddresses" =>  [::String, ...],
        "CcAddresses" =>  [::String, ...],
        "BccAddresses" =>  [::String, ...]
    ]
```

## `Message = [ ... ]` -- *Required*
The message to be sent.
```
 Message = [
        "Subject" => <required> [
            "Data" => <required> ::String,
            "Charset" =>  ::String
        ],
        "Body" => <required> [
            "Text" =>  [
                "Data" => <required> ::String,
                "Charset" =>  ::String
            ],
            "Html" =>  [
                "Data" => <required> ::String,
                "Charset" =>  ::String
            ]
        ]
    ]
```

## `ReplyToAddresses = [::String, ...]`
The reply-to email address(es) for the message. If the recipient replies to the message, each reply-to address will receive the reply.


## `ReturnPath = ::String`
The email address to which bounces and complaints are to be forwarded when feedback forwarding is enabled. If the message cannot be delivered to the recipient, then an error message will be returned from the recipient's ISP; this message will then be forwarded to the email address specified by the `ReturnPath` parameter. The `ReturnPath` parameter is never overwritten. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES.


## `SourceArn = ::String`
This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the `Source` parameter.

For example, if the owner of `example.com` (which has ARN `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a policy to it that authorizes you to send from `user@example.com`, then you would specify the `SourceArn` to be `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the `Source` to be `user@example.com`.

For more information about sending authorization, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).


## `ReturnPathArn = ::String`
This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the `ReturnPath` parameter.

For example, if the owner of `example.com` (which has ARN `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a policy to it that authorizes you to use `feedback@example.com`, then you would specify the `ReturnPathArn` to be `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the `ReturnPath` to be `feedback@example.com`.

For more information about sending authorization, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).


## `Tags = [[ ... ], ...]`
A list of tags, in the form of name/value pairs, to apply to an email that you send using `SendEmail`. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.
```
 Tags = [[
        "Name" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `ConfigurationSetName = ::String`
The name of the configuration set to use when you send an email using `SendEmail`.




# Returns

`SendEmailResponse`

# Exceptions

`MessageRejected`, `MailFromDomainNotVerifiedException` or `ConfigurationSetDoesNotExistException`.

# Example: SendEmail

The following example sends a formatted email:

Input:
```
[
    "Destination" => [
        "BccAddresses" => [

        ],
        "CcAddresses" => [
            "recipient3@example.com"
        ],
        "ToAddresses" => [
            "recipient1@example.com",
            "recipient2@example.com"
        ]
    ],
    "Message" => [
        "Body" => [
            "Html" => [
                "Charset" => "UTF-8",
                "Data" => "This message body contains HTML formatting. It can, for example, contain links like this one: <a class="ulink" href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide" target="_blank">Amazon SES Developer Guide</a>."
            ],
            "Text" => [
                "Charset" => "UTF-8",
                "Data" => "This is the message body in text format."
            ]
        ],
        "Subject" => [
            "Charset" => "UTF-8",
            "Data" => "Test email"
        ]
    ],
    "ReplyToAddresses" => [

    ],
    "ReturnPath" => "",
    "ReturnPathArn" => "",
    "Source" => "sender@example.com",
    "SourceArn" => ""
]
```

Output:
```
Dict(
    "MessageId" => "EXAMPLE78603177f-7a5433e7-8edb-42ae-af10-f0181f34d6ee-000000"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SendEmail)
"""

@inline send_email(aws::AWSConfig=default_aws_config(); args...) = send_email(aws, args)

@inline send_email(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SendEmail", args)

@inline send_email(args) = send_email(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.send_raw_email([::AWSConfig], arguments::Dict)
    SES.send_raw_email([::AWSConfig]; RawMessage=, <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "SendRawEmail", arguments::Dict)
    email([::AWSConfig], "SendRawEmail", RawMessage=, <keyword arguments>)

# SendRawEmail Operation

Sends an email message, with header and content specified by the client. The `SendRawEmail` action is useful for sending multipart MIME emails. The raw text of the message must comply with Internet email standards; otherwise, the message cannot be sent.

There are several important points to know about `SendRawEmail`:

*   You can only send email from verified email addresses and domains; otherwise, you will get an "Email address not verified" error. If your account is still in the Amazon SES sandbox, you must also verify every recipient email address except for the recipients provided by the Amazon SES mailbox simulator. For more information, go to the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html).

*   The total size of the message cannot exceed 10 MB. This includes any attachments that are part of the message.

*   Amazon SES has a limit on the total number of recipients per message. The combined number of To:, CC: and BCC: email addresses cannot exceed 50\. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call Amazon SES repeatedly to send the message to each group.

*   The To:, CC:, and BCC: headers in the raw message can contain a group list. Note that each recipient in a group list counts towards the 50-recipient limit.

*   Amazon SES overrides any Message-ID and Date headers you provide.

*   For every message that you send, the total number of recipients (To:, CC: and BCC:) is counted against your sending quota - the maximum number of emails you can send in a 24-hour period. For information about your sending quota, go to the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html).

*   If you are using sending authorization to send on behalf of another user, `SendRawEmail` enables you to specify the cross-account identity for the email's "Source," "From," and "Return-Path" parameters in one of two ways: you can pass optional parameters `SourceArn`, `FromArn`, and/or `ReturnPathArn` to the API, or you can include the following X-headers in the header of your raw email:

    *   `X-SES-SOURCE-ARN`

    *   `X-SES-FROM-ARN`

    *   `X-SES-RETURN-PATH-ARN`

    **Important**
    > Do not include these X-headers in the DKIM signature, because they are removed by Amazon SES before sending the email.

    For the most common sending authorization use case, we recommend that you specify the `SourceIdentityArn` and do not specify either the `FromIdentityArn` or `ReturnPathIdentityArn`. (The same note applies to the corresponding X-headers.) If you only specify the `SourceIdentityArn`, Amazon SES will simply set the "From" address and the "Return Path" address to the identity specified in `SourceIdentityArn`. For more information about sending authorization, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html).

# Arguments

## `Source = ::String`
The identity's email address. If you do not provide a value for this parameter, you must specify a "From" address in the raw text of the message. (You can also specify both.)

By default, the string must be 7-bit ASCII. If the text must contain any other characters, then you must use MIME encoded-word syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax uses the following form: `=?charset?encoding?encoded-text?=`. For more information, see [RFC 2047](http://tools.ietf.org/html/rfc2047).

**Note**
> If you specify the `Source` parameter and have feedback forwarding enabled, then bounces and complaints will be sent to this email address. This takes precedence over any *Return-Path* header that you might include in the raw text of the message.


## `Destinations = [::String, ...]`
A list of destinations for the message, consisting of To:, CC:, and BCC: addresses.


## `RawMessage = ["Data" => <required> blob]` -- *Required*
The raw text of the message. The client is responsible for ensuring the following:

*   Message must contain a header and a body, separated by a blank line.

*   All required header fields must be present.

*   Each part of a multipart MIME message must be formatted properly.

*   MIME content types must be among those supported by Amazon SES. For more information, go to the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types.html).

*   Must be base64-encoded.


## `FromArn = ::String`
This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to specify a particular "From" address in the header of the raw email.

Instead of using this parameter, you can use the X-header `X-SES-FROM-ARN` in the raw message of the email. If you use both the `FromArn` parameter and the corresponding X-header, Amazon SES uses the value of the `FromArn` parameter.

**Note**
> For information about when to use this parameter, see the description of `SendRawEmail` in this guide, or see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html).


## `SourceArn = ::String`
This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the `Source` parameter.

For example, if the owner of `example.com` (which has ARN `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a policy to it that authorizes you to send from `user@example.com`, then you would specify the `SourceArn` to be `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the `Source` to be `user@example.com`.

Instead of using this parameter, you can use the X-header `X-SES-SOURCE-ARN` in the raw message of the email. If you use both the `SourceArn` parameter and the corresponding X-header, Amazon SES uses the value of the `SourceArn` parameter.

**Note**
> For information about when to use this parameter, see the description of `SendRawEmail` in this guide, or see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html).


## `ReturnPathArn = ::String`
This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the `ReturnPath` parameter.

For example, if the owner of `example.com` (which has ARN `arn:aws:ses:us-east-1:123456789012:identity/example.com`) attaches a policy to it that authorizes you to use `feedback@example.com`, then you would specify the `ReturnPathArn` to be `arn:aws:ses:us-east-1:123456789012:identity/example.com`, and the `ReturnPath` to be `feedback@example.com`.

Instead of using this parameter, you can use the X-header `X-SES-RETURN-PATH-ARN` in the raw message of the email. If you use both the `ReturnPathArn` parameter and the corresponding X-header, Amazon SES uses the value of the `ReturnPathArn` parameter.

**Note**
> For information about when to use this parameter, see the description of `SendRawEmail` in this guide, or see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html).


## `Tags = [[ ... ], ...]`
A list of tags, in the form of name/value pairs, to apply to an email that you send using `SendRawEmail`. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.
```
 Tags = [[
        "Name" => <required> ::String,
        "Value" => <required> ::String
    ], ...]
```

## `ConfigurationSetName = ::String`
The name of the configuration set to use when you send an email using `SendRawEmail`.




# Returns

`SendRawEmailResponse`

# Exceptions

`MessageRejected`, `MailFromDomainNotVerifiedException` or `ConfigurationSetDoesNotExistException`.

# Example: SendRawEmail

The following example sends an email with an attachment:

Input:
```
[
    "Destinations" => [

    ],
    "FromArn" => "",
    "RawMessage" => [
        "Data" => "From: sender@example.com\nTo: recipient@example.com\nSubject: Test email (contains an attachment)\nMIME-Version: 1.0\nContent-type: Multipart/Mixed; boundary="NextPart"\n\n--NextPart\nContent-Type: text/plain\n\nThis is the message body.\n\n--NextPart\nContent-Type: text/plain;\nContent-Disposition: attachment; filename="attachment.txt"\n\nThis is the text in the attachment.\n\n--NextPart--"
    ],
    "ReturnPathArn" => "",
    "Source" => "",
    "SourceArn" => ""
]
```

Output:
```
Dict(
    "MessageId" => "EXAMPLEf3f73d99b-c63fb06f-d263-41f8-a0fb-d0dc67d56c07-000000"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SendRawEmail)
"""

@inline send_raw_email(aws::AWSConfig=default_aws_config(); args...) = send_raw_email(aws, args)

@inline send_raw_email(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SendRawEmail", args)

@inline send_raw_email(args) = send_raw_email(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.set_active_receipt_rule_set([::AWSConfig], arguments::Dict)
    SES.set_active_receipt_rule_set([::AWSConfig]; <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "SetActiveReceiptRuleSet", arguments::Dict)
    email([::AWSConfig], "SetActiveReceiptRuleSet", <keyword arguments>)

# SetActiveReceiptRuleSet Operation

Sets the specified receipt rule set as the active receipt rule set.

**Note**
> To disable your email-receiving through Amazon SES completely, you can call this API with RuleSetName set to null.

For information about managing receipt rule sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String`
The name of the receipt rule set to make active. Setting this value to null disables all email receiving.




# Returns

`SetActiveReceiptRuleSetResponse`

# Exceptions

`RuleSetDoesNotExistException`.

# Example: SetActiveReceiptRuleSet

The following example sets the active receipt rule set:

Input:
```
[
    "RuleSetName" => "RuleSetToActivate"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetActiveReceiptRuleSet)
"""

@inline set_active_receipt_rule_set(aws::AWSConfig=default_aws_config(); args...) = set_active_receipt_rule_set(aws, args)

@inline set_active_receipt_rule_set(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SetActiveReceiptRuleSet", args)

@inline set_active_receipt_rule_set(args) = set_active_receipt_rule_set(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.set_identity_dkim_enabled([::AWSConfig], arguments::Dict)
    SES.set_identity_dkim_enabled([::AWSConfig]; Identity=, DkimEnabled=)

    using AWSCore.Services.email
    email([::AWSConfig], "SetIdentityDkimEnabled", arguments::Dict)
    email([::AWSConfig], "SetIdentityDkimEnabled", Identity=, DkimEnabled=)

# SetIdentityDkimEnabled Operation

Enables or disables Easy DKIM signing of email sent from an identity:

*   If Easy DKIM signing is enabled for a domain name identity (e.g., `example.com`), then Amazon SES will DKIM-sign all email sent by addresses under that domain name (e.g., `user@example.com`).

*   If Easy DKIM signing is enabled for an email address, then Amazon SES will DKIM-sign all email sent by that email address.

For email addresses (e.g., `user@example.com`), you can only enable Easy DKIM signing if the corresponding domain (e.g., `example.com`) has been set up for Easy DKIM using the AWS Console or the `VerifyDomainDkim` action.

This action is throttled at one request per second.

For more information about Easy DKIM signing, go to the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html).

# Arguments

## `Identity = ::String` -- *Required*
The identity for which DKIM signing should be enabled or disabled.


## `DkimEnabled = ::Bool` -- *Required*
Sets whether DKIM signing is enabled for an identity. Set to `true` to enable DKIM signing for this identity; `false` to disable it.




# Returns

`SetIdentityDkimEnabledResponse`

# Example: SetIdentityDkimEnabled

The following example configures Amazon SES to Easy DKIM-sign the email sent from an identity:

Input:
```
[
    "DkimEnabled" => true,
    "Identity" => "user@example.com"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityDkimEnabled)
"""

@inline set_identity_dkim_enabled(aws::AWSConfig=default_aws_config(); args...) = set_identity_dkim_enabled(aws, args)

@inline set_identity_dkim_enabled(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SetIdentityDkimEnabled", args)

@inline set_identity_dkim_enabled(args) = set_identity_dkim_enabled(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.set_identity_feedback_forwarding_enabled([::AWSConfig], arguments::Dict)
    SES.set_identity_feedback_forwarding_enabled([::AWSConfig]; Identity=, ForwardingEnabled=)

    using AWSCore.Services.email
    email([::AWSConfig], "SetIdentityFeedbackForwardingEnabled", arguments::Dict)
    email([::AWSConfig], "SetIdentityFeedbackForwardingEnabled", Identity=, ForwardingEnabled=)

# SetIdentityFeedbackForwardingEnabled Operation

Given an identity (an email address or a domain), enables or disables whether Amazon SES forwards bounce and complaint notifications as email. Feedback forwarding can only be disabled when Amazon Simple Notification Service (Amazon SNS) topics are specified for both bounces and complaints.

**Note**
> Feedback forwarding does not apply to delivery notifications. Delivery notifications are only available through Amazon SNS.

This action is throttled at one request per second.

For more information about using notifications with Amazon SES, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).

# Arguments

## `Identity = ::String` -- *Required*
The identity for which to set bounce and complaint notification forwarding. Examples: `user@example.com`, `example.com`.


## `ForwardingEnabled = ::Bool` -- *Required*
Sets whether Amazon SES will forward bounce and complaint notifications as email. `true` specifies that Amazon SES will forward bounce and complaint notifications as email, in addition to any Amazon SNS topic publishing otherwise specified. `false` specifies that Amazon SES will publish bounce and complaint notifications only through Amazon SNS. This value can only be set to `false` when Amazon SNS topics are set for both `Bounce` and `Complaint` notification types.




# Returns

`SetIdentityFeedbackForwardingEnabledResponse`

# Example: SetIdentityFeedbackForwardingEnabled

The following example configures Amazon SES to forward an identity's bounces and complaints via email:

Input:
```
[
    "ForwardingEnabled" => true,
    "Identity" => "user@example.com"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityFeedbackForwardingEnabled)
"""

@inline set_identity_feedback_forwarding_enabled(aws::AWSConfig=default_aws_config(); args...) = set_identity_feedback_forwarding_enabled(aws, args)

@inline set_identity_feedback_forwarding_enabled(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SetIdentityFeedbackForwardingEnabled", args)

@inline set_identity_feedback_forwarding_enabled(args) = set_identity_feedback_forwarding_enabled(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.set_identity_headers_in_notifications_enabled([::AWSConfig], arguments::Dict)
    SES.set_identity_headers_in_notifications_enabled([::AWSConfig]; Identity=, NotificationType=, Enabled=)

    using AWSCore.Services.email
    email([::AWSConfig], "SetIdentityHeadersInNotificationsEnabled", arguments::Dict)
    email([::AWSConfig], "SetIdentityHeadersInNotificationsEnabled", Identity=, NotificationType=, Enabled=)

# SetIdentityHeadersInNotificationsEnabled Operation

Given an identity (an email address or a domain), sets whether Amazon SES includes the original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified type.

This action is throttled at one request per second.

For more information about using notifications with Amazon SES, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).

# Arguments

## `Identity = ::String` -- *Required*
The identity for which to enable or disable headers in notifications. Examples: `user@example.com`, `example.com`.


## `NotificationType = "Bounce", "Complaint" or "Delivery"` -- *Required*
The notification type for which to enable or disable headers in notifications.


## `Enabled = ::Bool` -- *Required*
Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the specified notification type. A value of `true` specifies that Amazon SES will include headers in notifications, and a value of `false` specifies that Amazon SES will not include headers in notifications.

This value can only be set when `NotificationType` is already set to use a particular Amazon SNS topic.




# Returns

`SetIdentityHeadersInNotificationsEnabledResponse`

# Example: SetIdentityHeadersInNotificationsEnabled

The following example configures Amazon SES to include the original email headers in the Amazon SNS bounce notifications for an identity:

Input:
```
[
    "Enabled" => true,
    "Identity" => "user@example.com",
    "NotificationType" => "Bounce"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityHeadersInNotificationsEnabled)
"""

@inline set_identity_headers_in_notifications_enabled(aws::AWSConfig=default_aws_config(); args...) = set_identity_headers_in_notifications_enabled(aws, args)

@inline set_identity_headers_in_notifications_enabled(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SetIdentityHeadersInNotificationsEnabled", args)

@inline set_identity_headers_in_notifications_enabled(args) = set_identity_headers_in_notifications_enabled(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.set_identity_mail_from_domain([::AWSConfig], arguments::Dict)
    SES.set_identity_mail_from_domain([::AWSConfig]; Identity=, <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "SetIdentityMailFromDomain", arguments::Dict)
    email([::AWSConfig], "SetIdentityMailFromDomain", Identity=, <keyword arguments>)

# SetIdentityMailFromDomain Operation

Enables or disables the custom MAIL FROM domain setup for a verified identity (an email address or a domain).

**Important**
> To send emails using the specified MAIL FROM domain, you must add an MX record to your MAIL FROM domain's DNS settings. If you want your emails to pass Sender Policy Framework (SPF) checks, you must also add or update an SPF record. For more information, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html).

This action is throttled at one request per second.

# Arguments

## `Identity = ::String` -- *Required*
The verified identity for which you want to enable or disable the specified custom MAIL FROM domain.


## `MailFromDomain = ::String`
The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must 1) be a subdomain of the verified identity, 2) not be used in a "From" address if the MAIL FROM domain is the destination of email feedback forwarding (for more information, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html)), and 3) not be used to receive emails. A value of `null` disables the custom MAIL FROM setting for the identity.


## `BehaviorOnMXFailure = "UseDefaultValue" or "RejectMessage"`
The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. If you choose `UseDefaultValue`, Amazon SES will use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose `RejectMessage`, Amazon SES will return a `MailFromDomainNotVerified` error and not send the email.

The action specified in `BehaviorOnMXFailure` is taken when the custom MAIL FROM domain setup is in the `Pending`, `Failed`, and `TemporaryFailure` states.




# Returns

`SetIdentityMailFromDomainResponse`

# Example: SetIdentityMailFromDomain

The following example configures Amazon SES to use a custom MAIL FROM domain for an identity:

Input:
```
[
    "BehaviorOnMXFailure" => "UseDefaultValue",
    "Identity" => "user@example.com",
    "MailFromDomain" => "bounces.example.com"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityMailFromDomain)
"""

@inline set_identity_mail_from_domain(aws::AWSConfig=default_aws_config(); args...) = set_identity_mail_from_domain(aws, args)

@inline set_identity_mail_from_domain(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SetIdentityMailFromDomain", args)

@inline set_identity_mail_from_domain(args) = set_identity_mail_from_domain(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.set_identity_notification_topic([::AWSConfig], arguments::Dict)
    SES.set_identity_notification_topic([::AWSConfig]; Identity=, NotificationType=, <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "SetIdentityNotificationTopic", arguments::Dict)
    email([::AWSConfig], "SetIdentityNotificationTopic", Identity=, NotificationType=, <keyword arguments>)

# SetIdentityNotificationTopic Operation

Given an identity (an email address or a domain), sets the Amazon Simple Notification Service (Amazon SNS) topic to which Amazon SES will publish bounce, complaint, and/or delivery notifications for emails sent with that identity as the `Source`.

**Note**
> Unless feedback forwarding is enabled, you must specify Amazon SNS topics for bounce and complaint notifications. For more information, see `SetIdentityFeedbackForwardingEnabled`.

This action is throttled at one request per second.

For more information about feedback notification, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html).

# Arguments

## `Identity = ::String` -- *Required*
The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: `user@example.com`, `example.com`, `arn:aws:ses:us-east-1:123456789012:identity/example.com`.


## `NotificationType = "Bounce", "Complaint" or "Delivery"` -- *Required*
The type of notifications that will be published to the specified Amazon SNS topic.


## `SnsTopic = ::String`
The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from the request or a null value is passed, `SnsTopic` is cleared and publishing is disabled.




# Returns

`SetIdentityNotificationTopicResponse`

# Example: SetIdentityNotificationTopic

The following example sets the Amazon SNS topic to which Amazon SES will publish bounce, complaint, and/or delivery notifications for emails sent with the specified identity as the Source:

Input:
```
[
    "Identity" => "user@example.com",
    "NotificationType" => "Bounce",
    "SnsTopic" => "arn:aws:sns:us-west-2:111122223333:MyTopic"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetIdentityNotificationTopic)
"""

@inline set_identity_notification_topic(aws::AWSConfig=default_aws_config(); args...) = set_identity_notification_topic(aws, args)

@inline set_identity_notification_topic(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SetIdentityNotificationTopic", args)

@inline set_identity_notification_topic(args) = set_identity_notification_topic(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.set_receipt_rule_position([::AWSConfig], arguments::Dict)
    SES.set_receipt_rule_position([::AWSConfig]; RuleSetName=, RuleName=, <keyword arguments>)

    using AWSCore.Services.email
    email([::AWSConfig], "SetReceiptRulePosition", arguments::Dict)
    email([::AWSConfig], "SetReceiptRulePosition", RuleSetName=, RuleName=, <keyword arguments>)

# SetReceiptRulePosition Operation

Sets the position of the specified receipt rule in the receipt rule set.

For information about managing receipt rules, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the receipt rule set that contains the receipt rule to reposition.


## `RuleName = ::String` -- *Required*
The name of the receipt rule to reposition.


## `After = ::String`
The name of the receipt rule after which to place the specified receipt rule.




# Returns

`SetReceiptRulePositionResponse`

# Exceptions

`RuleSetDoesNotExistException` or `RuleDoesNotExistException`.

# Example: SetReceiptRulePosition

The following example sets the position of a receipt rule in a receipt rule set:

Input:
```
[
    "After" => "PutRuleAfterThisRule",
    "RuleName" => "RuleToReposition",
    "RuleSetName" => "MyRuleSet"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/SetReceiptRulePosition)
"""

@inline set_receipt_rule_position(aws::AWSConfig=default_aws_config(); args...) = set_receipt_rule_position(aws, args)

@inline set_receipt_rule_position(aws::AWSConfig, args) = AWSCore.Services.email(aws, "SetReceiptRulePosition", args)

@inline set_receipt_rule_position(args) = set_receipt_rule_position(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.update_configuration_set_event_destination([::AWSConfig], arguments::Dict)
    SES.update_configuration_set_event_destination([::AWSConfig]; ConfigurationSetName=, EventDestination=)

    using AWSCore.Services.email
    email([::AWSConfig], "UpdateConfigurationSetEventDestination", arguments::Dict)
    email([::AWSConfig], "UpdateConfigurationSetEventDestination", ConfigurationSetName=, EventDestination=)

# UpdateConfigurationSetEventDestination Operation

Updates the event destination of a configuration set.

**Note**
> When you create or update an event destination, you must provide one, and only one, destination. The destination can be either Amazon CloudWatch or Amazon Kinesis Firehose.

Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch or Amazon Kinesis Firehose. For information about using configuration sets, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

This action is throttled at one request per second.

# Arguments

## `ConfigurationSetName = ::String` -- *Required*
The name of the configuration set that you want to update.


## `EventDestination = [ ... ]` -- *Required*
The event destination object that you want to apply to the specified configuration set.
```
 EventDestination = [
        "Name" => <required> ::String,
        "Enabled" =>  ::Bool,
        "MatchingEventTypes" => <required> ["send", "reject", "bounce", "complaint" or "delivery", ...],
        "KinesisFirehoseDestination" =>  [
            "IAMRoleARN" => <required> ::String,
            "DeliveryStreamARN" => <required> ::String
        ],
        "CloudWatchDestination" =>  ["DimensionConfigurations" => <required> [[
                "DimensionName" => <required> ::String,
                "DimensionValueSource" => <required> "messageTag" or "emailHeader",
                "DefaultDimensionValue" => <required> ::String
            ], ...]]
    ]
```



# Returns

`UpdateConfigurationSetEventDestinationResponse`

# Exceptions

`ConfigurationSetDoesNotExistException`, `EventDestinationDoesNotExistException`, `InvalidCloudWatchDestinationException` or `InvalidFirehoseDestinationException`.

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateConfigurationSetEventDestination)
"""

@inline update_configuration_set_event_destination(aws::AWSConfig=default_aws_config(); args...) = update_configuration_set_event_destination(aws, args)

@inline update_configuration_set_event_destination(aws::AWSConfig, args) = AWSCore.Services.email(aws, "UpdateConfigurationSetEventDestination", args)

@inline update_configuration_set_event_destination(args) = update_configuration_set_event_destination(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.update_receipt_rule([::AWSConfig], arguments::Dict)
    SES.update_receipt_rule([::AWSConfig]; RuleSetName=, Rule=)

    using AWSCore.Services.email
    email([::AWSConfig], "UpdateReceiptRule", arguments::Dict)
    email([::AWSConfig], "UpdateReceiptRule", RuleSetName=, Rule=)

# UpdateReceiptRule Operation

Updates a receipt rule.

For information about managing receipt rules, see the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html).

This action is throttled at one request per second.

# Arguments

## `RuleSetName = ::String` -- *Required*
The name of the receipt rule set to which the receipt rule belongs.


## `Rule = [ ... ]` -- *Required*
A data structure that contains the updated receipt rule information.
```
 Rule = [
        "Name" => <required> ::String,
        "Enabled" =>  ::Bool,
        "TlsPolicy" =>  "Require" or "Optional",
        "Recipients" =>  [::String, ...],
        "Actions" =>  [[
            "S3Action" =>  [
                "TopicArn" =>  ::String,
                "BucketName" => <required> ::String,
                "ObjectKeyPrefix" =>  ::String,
                "KmsKeyArn" =>  ::String
            ],
            "BounceAction" =>  [
                "TopicArn" =>  ::String,
                "SmtpReplyCode" => <required> ::String,
                "StatusCode" =>  ::String,
                "Message" => <required> ::String,
                "Sender" => <required> ::String
            ],
            "WorkmailAction" =>  [
                "TopicArn" =>  ::String,
                "OrganizationArn" => <required> ::String
            ],
            "LambdaAction" =>  [
                "TopicArn" =>  ::String,
                "FunctionArn" => <required> ::String,
                "InvocationType" =>  "Event" or "RequestResponse"
            ],
            "StopAction" =>  [
                "Scope" => <required> "RuleSet",
                "TopicArn" =>  ::String
            ],
            "AddHeaderAction" =>  [
                "HeaderName" => <required> ::String,
                "HeaderValue" => <required> ::String
            ],
            "SNSAction" =>  [
                "TopicArn" => <required> ::String,
                "Encoding" =>  "UTF-8" or "Base64"
            ]
        ], ...],
        "ScanEnabled" =>  ::Bool
    ]
```



# Returns

`UpdateReceiptRuleResponse`

# Exceptions

`InvalidSnsTopicException`, `InvalidS3ConfigurationException`, `InvalidLambdaFunctionException`, `RuleSetDoesNotExistException`, `RuleDoesNotExistException` or `LimitExceededException`.

# Example: UpdateReceiptRule

The following example updates a receipt rule to use an Amazon S3 action:

Input:
```
[
    "Rule" => [
        "Actions" => [
            [
                "S3Action" => [
                    "BucketName" => "MyBucket",
                    "ObjectKeyPrefix" => "email"
                ]
            ]
        ],
        "Enabled" => true,
        "Name" => "MyRule",
        "ScanEnabled" => true,
        "TlsPolicy" => "Optional"
    ],
    "RuleSetName" => "MyRuleSet"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/UpdateReceiptRule)
"""

@inline update_receipt_rule(aws::AWSConfig=default_aws_config(); args...) = update_receipt_rule(aws, args)

@inline update_receipt_rule(aws::AWSConfig, args) = AWSCore.Services.email(aws, "UpdateReceiptRule", args)

@inline update_receipt_rule(args) = update_receipt_rule(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.verify_domain_dkim([::AWSConfig], arguments::Dict)
    SES.verify_domain_dkim([::AWSConfig]; Domain=)

    using AWSCore.Services.email
    email([::AWSConfig], "VerifyDomainDkim", arguments::Dict)
    email([::AWSConfig], "VerifyDomainDkim", Domain=)

# VerifyDomainDkim Operation

Returns a set of DKIM tokens for a domain. DKIM *tokens* are character strings that represent your domain's identity. Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign email originating from that domain.

This action is throttled at one request per second.

To enable or disable Easy DKIM signing for a domain, use the `SetIdentityDkimEnabled` action.

For more information about creating DNS records using DKIM tokens, go to the [Amazon SES Developer Guide](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html).

# Arguments

## `Domain = ::String` -- *Required*
The name of the domain to be verified for Easy DKIM signing.




# Returns

`VerifyDomainDkimResponse`

# Example: VerifyDomainDkim

The following example generates DKIM tokens for a domain that has been verified with Amazon SES:

Input:
```
[
    "Domain" => "example.com"
]
```

Output:
```
Dict(
    "DkimTokens" => [
        "EXAMPLEq76owjnks3lnluwg65scbemvw",
        "EXAMPLEi3dnsj67hstzaj673klariwx2",
        "EXAMPLEwfbtcukvimehexktmdtaz6naj"
    ]
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/VerifyDomainDkim)
"""

@inline verify_domain_dkim(aws::AWSConfig=default_aws_config(); args...) = verify_domain_dkim(aws, args)

@inline verify_domain_dkim(aws::AWSConfig, args) = AWSCore.Services.email(aws, "VerifyDomainDkim", args)

@inline verify_domain_dkim(args) = verify_domain_dkim(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.verify_domain_identity([::AWSConfig], arguments::Dict)
    SES.verify_domain_identity([::AWSConfig]; Domain=)

    using AWSCore.Services.email
    email([::AWSConfig], "VerifyDomainIdentity", arguments::Dict)
    email([::AWSConfig], "VerifyDomainIdentity", Domain=)

# VerifyDomainIdentity Operation

Verifies a domain.

This action is throttled at one request per second.

# Arguments

## `Domain = ::String` -- *Required*
The domain to be verified.




# Returns

`VerifyDomainIdentityResponse`

# Example: VerifyDomainIdentity

The following example starts the domain verification process with Amazon SES:

Input:
```
[
    "Domain" => "example.com"
]
```

Output:
```
Dict(
    "VerificationToken" => "eoEmxw+YaYhb3h3iVJHuXMJXqeu1q1/wwmvjuEXAMPLE"
)
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/VerifyDomainIdentity)
"""

@inline verify_domain_identity(aws::AWSConfig=default_aws_config(); args...) = verify_domain_identity(aws, args)

@inline verify_domain_identity(aws::AWSConfig, args) = AWSCore.Services.email(aws, "VerifyDomainIdentity", args)

@inline verify_domain_identity(args) = verify_domain_identity(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.verify_email_address([::AWSConfig], arguments::Dict)
    SES.verify_email_address([::AWSConfig]; EmailAddress=)

    using AWSCore.Services.email
    email([::AWSConfig], "VerifyEmailAddress", arguments::Dict)
    email([::AWSConfig], "VerifyEmailAddress", EmailAddress=)

# VerifyEmailAddress Operation

Verifies an email address. This action causes a confirmation email message to be sent to the specified address.

**Important**
> The VerifyEmailAddress action is deprecated as of the May 15, 2012 release of Domain Verification. The VerifyEmailIdentity action is now preferred.

This action is throttled at one request per second.

# Arguments

## `EmailAddress = ::String` -- *Required*
The email address to be verified.




# Example: VerifyEmailAddress

The following example starts the email address verification process with Amazon SES:

Input:
```
[
    "EmailAddress" => "user@example.com"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/VerifyEmailAddress)
"""

@inline verify_email_address(aws::AWSConfig=default_aws_config(); args...) = verify_email_address(aws, args)

@inline verify_email_address(aws::AWSConfig, args) = AWSCore.Services.email(aws, "VerifyEmailAddress", args)

@inline verify_email_address(args) = verify_email_address(default_aws_config(), args)


"""
    using AWSSDK.SES
    SES.verify_email_identity([::AWSConfig], arguments::Dict)
    SES.verify_email_identity([::AWSConfig]; EmailAddress=)

    using AWSCore.Services.email
    email([::AWSConfig], "VerifyEmailIdentity", arguments::Dict)
    email([::AWSConfig], "VerifyEmailIdentity", EmailAddress=)

# VerifyEmailIdentity Operation

Verifies an email address. This action causes a confirmation email message to be sent to the specified address.

This action is throttled at one request per second.

# Arguments

## `EmailAddress = ::String` -- *Required*
The email address to be verified.




# Returns

`VerifyEmailIdentityResponse`

# Example: VerifyEmailIdentity

The following example starts the email address verification process with Amazon SES:

Input:
```
[
    "EmailAddress" => "user@example.com"
]
```

See also: [AWS API Documentation](https://docs.aws.amazon.com/goto/WebAPI/email-2010-12-01/VerifyEmailIdentity)
"""

@inline verify_email_identity(aws::AWSConfig=default_aws_config(); args...) = verify_email_identity(aws, args)

@inline verify_email_identity(aws::AWSConfig, args) = AWSCore.Services.email(aws, "VerifyEmailIdentity", args)

@inline verify_email_identity(args) = verify_email_identity(default_aws_config(), args)




end # module SES


#==============================================================================#
# End of file
#==============================================================================#