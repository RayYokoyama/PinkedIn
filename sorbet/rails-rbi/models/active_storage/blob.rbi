# This is an autogenerated file for dynamic methods in ActiveStorage::Blob
# Please rerun bundle exec rake rails_rbi:models[ActiveStorage::Blob] to regenerate.

# typed: strong
module ActiveStorage::Blob::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module ActiveStorage::Blob::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[ActiveStorage::Blob]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[ActiveStorage::Blob]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[ActiveStorage::Blob]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(ActiveStorage::Blob)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(ActiveStorage::Blob) }
  def find_by_id!(id); end
end

class ActiveStorage::Blob < ActiveRecord::Base
  include ActiveStorage::Blob::GeneratedAssociationMethods
  extend ActiveStorage::Blob::CustomFinderMethods
  extend ActiveStorage::Blob::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(ActiveStorage::Blob::ActiveRecord_Relation, ActiveStorage::Blob::ActiveRecord_Associations_CollectionProxy, ActiveStorage::Blob::ActiveRecord_AssociationRelation) }

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def self.unattached(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def self.with_attached_preview_image(*args); end
end

class ActiveStorage::Blob::ActiveRecord_Relation < ActiveRecord::Relation
  include ActiveStorage::Blob::ActiveRelation_WhereNot
  include ActiveStorage::Blob::CustomFinderMethods
  include ActiveStorage::Blob::QueryMethodsReturningRelation
  Elem = type_member(fixed: ActiveStorage::Blob)

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def unattached(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def with_attached_preview_image(*args); end
end

class ActiveStorage::Blob::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include ActiveStorage::Blob::ActiveRelation_WhereNot
  include ActiveStorage::Blob::CustomFinderMethods
  include ActiveStorage::Blob::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: ActiveStorage::Blob)

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def unattached(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def with_attached_preview_image(*args); end
end

class ActiveStorage::Blob::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ActiveStorage::Blob::CustomFinderMethods
  include ActiveStorage::Blob::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: ActiveStorage::Blob)

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def unattached(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def with_attached_preview_image(*args); end

  sig { params(records: T.any(ActiveStorage::Blob, T::Array[ActiveStorage::Blob])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(ActiveStorage::Blob, T::Array[ActiveStorage::Blob])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(ActiveStorage::Blob, T::Array[ActiveStorage::Blob])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(ActiveStorage::Blob, T::Array[ActiveStorage::Blob])).returns(T.self_type) }
  def concat(*records); end
end

module ActiveStorage::Blob::QueryMethodsReturningRelation
  sig { returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ActiveStorage::Blob::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module ActiveStorage::Blob::QueryMethodsReturningAssociationRelation
  sig { returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActiveStorage::Blob::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActiveStorage::Blob::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: ActiveStorage::Blob::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module ActiveStorage::Blob::GeneratedAssociationMethods
  sig { returns(::ActiveStorage::Attachment::ActiveRecord_Associations_CollectionProxy) }
  def attachments; end

  sig { returns(T::Array[T.untyped]) }
  def attachment_ids; end

  sig { params(value: T::Enumerable[::ActiveStorage::Attachment]).void }
  def attachments=(value); end

  sig { returns(T.nilable(::ActiveStorage::Attachment)) }
  def preview_image_attachment; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Attachment).void)).returns(::ActiveStorage::Attachment) }
  def build_preview_image_attachment(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Attachment).void)).returns(::ActiveStorage::Attachment) }
  def create_preview_image_attachment(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Attachment).void)).returns(::ActiveStorage::Attachment) }
  def create_preview_image_attachment!(*args, &block); end

  sig { params(value: T.nilable(::ActiveStorage::Attachment)).void }
  def preview_image_attachment=(value); end

  sig { returns(T.nilable(::ActiveStorage::Attachment)) }
  def reload_preview_image_attachment; end

  sig { returns(T.nilable(::ActiveStorage::Blob)) }
  def preview_image_blob; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)).returns(::ActiveStorage::Blob) }
  def build_preview_image_blob(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)).returns(::ActiveStorage::Blob) }
  def create_preview_image_blob(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::ActiveStorage::Blob).void)).returns(::ActiveStorage::Blob) }
  def create_preview_image_blob!(*args, &block); end

  sig { params(value: T.nilable(::ActiveStorage::Blob)).void }
  def preview_image_blob=(value); end

  sig { returns(T.nilable(::ActiveStorage::Blob)) }
  def reload_preview_image_blob; end

  sig { returns(T.nilable(ActiveStorage::Attached::One)) }
  def preview_image; end

  sig { params(attachable: T.untyped).returns(T.untyped) }
  def preview_image=(attachable); end
end