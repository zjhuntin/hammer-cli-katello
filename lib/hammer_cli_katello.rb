require 'hammer_cli'
require 'hammer_cli_foreman'
require 'hammer_cli/exit_codes'
require 'hammer_cli_foreman/commands'
require 'hammer_cli_foreman/output/fields'
require 'hammer_cli_foreman_tasks'

module HammerCLIKatello

  def self.exception_handler_class
    HammerCLIKatello::ExceptionHandler
  end

  require 'hammer_cli_katello/output/fields'
  require 'hammer_cli_katello/output/formatters'
  require 'hammer_cli_katello/lifecycle_environment_name_resolvable'
  require 'hammer_cli_katello/repository_scoped_to_product'
  require "hammer_cli_katello/commands"
  require "hammer_cli_katello/associating_commands"
  require "hammer_cli_katello/version"
  require "hammer_cli_katello/exception_handler"
  require 'hammer_cli_katello/i18n'
  require "hammer_cli_katello/version"
  require 'hammer_cli_katello/id_resolver'

  # commands
  HammerCLI::MainCommand.lazy_subcommand("activation-key", _("Manipulate activation keys."),
                                         'HammerCLIKatello::ActivationKeyCommand',
                                         'hammer_cli_katello/activation_key'
  )

  HammerCLI::MainCommand.lazy_subcommand!("organization", _("Manipulate organizations"),
                                          'HammerCLIKatello::Organization',
                                          'hammer_cli_katello/organization'
  )

  HammerCLI::MainCommand.lazy_subcommand("gpg", _("Manipulate GPG Key actions on the server"),
                                         'HammerCLIKatello::GpgKeyCommand',
                                         'hammer_cli_katello/gpg_key'
  )

  HammerCLI::MainCommand.lazy_subcommand("lifecycle-environment",
                                         _("Manipulate lifecycle_environments on the server"),
                                         'HammerCLIKatello::LifecycleEnvironmentCommand',
                                         'hammer_cli_katello/lifecycle_environment'
  )

  HammerCLI::MainCommand.lazy_subcommand("ping", _("Get the status of the server"),
                                         'HammerCLIKatello::PingCommand',
                                         'hammer_cli_katello/ping'
  )

  HammerCLI::MainCommand.lazy_subcommand("product", _("Manipulate products."),
                                         'HammerCLIKatello::Product',
                                         'hammer_cli_katello/product'
  )

  HammerCLI::MainCommand.lazy_subcommand("puppet-module", _("View Puppet Module details."),
                                         'HammerCLIKatello::PuppetModule',
                                         'hammer_cli_katello/puppet_module'
  )

  HammerCLI::MainCommand.lazy_subcommand("repository", _("Manipulate repositories"),
                                         'HammerCLIKatello::Repository',
                                         'hammer_cli_katello/repository'
  )

  HammerCLI::MainCommand.lazy_subcommand("repository-set",
                                         _("Manipulate repository sets on the server"),
                                         'HammerCLIKatello::RepositorySetCommand',
                                         'hammer_cli_katello/repository_set'
  )

  HammerCLI::MainCommand.lazy_subcommand("subscription", _("Manipulate subscriptions."),
                                         'HammerCLIKatello::SubscriptionCommand',
                                         'hammer_cli_katello/subscription'
  )

  HammerCLI::MainCommand.lazy_subcommand('sync-plan', _("Manipulate sync plans"),
                                         'HammerCLIKatello::SyncPlan',
                                         'hammer_cli_katello/sync_plan'
  )

  HammerCLI::MainCommand.lazy_subcommand('host-collection', _("Manipulate host collections"),
                                         'HammerCLIKatello::HostCollection',
                                         'hammer_cli_katello/host_collection'
  )

  HammerCLI::MainCommand.lazy_subcommand("content-host",
                                         _("Manipulate content hosts on the server"),
                                         'HammerCLIKatello::ContentHostCommand',
                                         'hammer_cli_katello/content_host'
  )

  HammerCLI::MainCommand.lazy_subcommand("content-view", _("Manipulate content views."),
                                         'HammerCLIKatello::ContentView',
                                         'hammer_cli_katello/content_view'
  )

  HammerCLI::MainCommand.lazy_subcommand("capsule", _("Manipulate capsule"),
                                         'HammerCLIKatello::Capsule',
                                         'hammer_cli_katello/capsule'
  )

  HammerCLI::MainCommand.lazy_subcommand("package", _("Manipulate packages."),
                                         'HammerCLIKatello::PackageCommand',
                                         'hammer_cli_katello/package'
  )

  HammerCLI::MainCommand.lazy_subcommand("package-group", _("Manipulate package groups"),
                                         'HammerCLIKatello::PackageGroupCommand',
                                         'hammer_cli_katello/package_group'
  )

  HammerCLI::MainCommand.lazy_subcommand("erratum", _("Manipulate errata"),
                                         'HammerCLIKatello::ErratumCommand',
                                         'hammer_cli_katello/erratum'
  )

  # subcommands to hammer_cli_foreman commands
  require 'hammer_cli_katello/host'

end
