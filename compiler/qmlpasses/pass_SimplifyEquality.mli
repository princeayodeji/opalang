(*
    Copyright © 2011 MLstate

    This file is part of Opa.

    Opa is free software: you can redistribute it and/or modify it under the
    terms of the GNU Affero General Public License, version 3, as published by
    the Free Software Foundation.

    Opa is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
    FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
    more details.

    You should have received a copy of the GNU Affero General Public License
    along with Opa. If not, see <http://www.gnu.org/licenses/>.
*)

(**
   This pass rewrites equality against simple records as pattern matchings
   It is more efficient and removes some type propagation done by explicit instantiation
*)
val process_code : (string -> Ident.t) -> QmlTypes.gamma -> QmlAst.annotmap -> QmlAst.code -> QmlAst.annotmap * QmlAst.code
