<?php
/**
 * File: User.class.php
 * This class defines the user object needed in
 * almost all Web applications
 *
 * @package User
 * @author  php@evoknow.com
 * @version $Id$
 * @copyright 2005 EVOKNOW, Inc.
 *
 */

class User extends Entity
{
   /**
   * Default Constructor
   * @return none
   */
   function User($attributes = null)
   {

      // Default Constructor
      $this->entity_table = USER_TBL;
      $this->loaded       = false;


      // If UID is given load the user
      if ($attributes['uid'] > 0)
      {
           $this->loadUserByUID($attributes['uid']);
      }
      
      if ($attributes)
      {
         foreach($attributes as $key => $value)
         {
            $this->$key = $value;
         }
      }

      // If login ID field is defined,
      // set the login ID field
      // else set default login ID field to username
      if (!defined('LOGIN_ID_FIELD'))
      {
         $this->setLoginIDField('username');
      }
      else
      {
         $this->setLoginIDField(LOGIN_ID_FIELD);
      }
   }

   /**
   * Gets User Information
   * @return User Information
   */
   function getUserInfo()
   {
      return $this->getAttributes();
   }

   /**
   * Loads user info into session
   * @param user id
   * @return User Information
   */
   function loadUserByUID($uid = null)
   {
      return $this->loadUserByKeyValue('uid', $uid);
   }

   /**
   * Loads user info into session
   * @param user email
   * @return User Information
   */
   function loadUserByEmail($email = null)
   {
      return $this->loadUserByKeyValue('email', q($email));
   }

   /**
   * Loads user info into session
   * @param key -> value
   * @return User Information
   */
   function loadUserByKeyValue($key = null, $value = null)
   {
      $info['table'] = $this->entity_table;
      $info['where'] = "$key = $value";
      $info['debug'] = false;
      $rows = select($info);
      
      //If data found from DB 
      if (count($rows))
      {
         foreach($rows[0] as $key => $value)
         {
            $this->$key = $value;
         }

         $this->loadUserAddress();

         $this->loaded = true;
      }
   }

   /**
   * Loads user address
   * @param none
   * @return User Address Information
   */
   function loadUserAddress()
   {
      $info['table'] = ADDRESS_TBL;
      $info['where'] = "user_id = " . $this->uid;
      $info['debug'] = false;

      $rows = select($info);
      
      //If data found from DB 
      if (count($rows))
      {
         foreach($rows[0] as $key => $value)
         {
            $this->$key = $value;
         }
      }
   }

   /**
   * Checkes if user is looged in
   * @return boolean
   */
   function isLoggedIn()
   {
      return $this->isAuthenticated();
   }

   /**
   * Checkes if user is looged in
   * @return boolean
   */
   function isAuthenticated()
   {
      $uid = getFromSession('uid');

      return !empty($uid) ? true : false;
   }

   /**
   * Checkes user type
   * @return boolean
   */
   function sameTypeAs($userType)
   {
      return preg_match("/$userType/i", $this->user_type) ? true : false;
   }

   /**
   * Loads user from session
   * @return none
   */
   function loadFromSession()
   {
      //dumpVar($_SESSION);
      $this->setUsername(getFromSession('username'));
      $this->setUserType(getFromSession('user_type'));
      $this->setEmail(getFromSession('email'));
      $this->setName(getFromSession('name'));
      
   }

   /**
   * Redirects to login page
   * @return none
   */
   function goLogin()
   {
      header('Location: ' . LOGIN_URL);
   }

   /**
   * Redirects to home page
   * @return none
   */
   function goHome()
   {
   	  header('Location: ' . USER_HOME_URL);
   }

   /**
   * Sets user type
   * @param user type
   * @return none
   */
   function setUserType($type = null)
   {
      $this->user_type = $type;
   }

   /**
   * Gets user type
   * @return user type
   */
   function getUserType()
   {
      return $this->user_type;
   }

   /**
   * Sets login ID field
   * @param field name
   * @return none
   */
   function setLoginIDField($fieldName = null)
   {
     $this->login_id_field = $fieldName;
   }

   /**
   * Gets login ID field
   * @return login ID field
   */
   function getLoginIDField()
   {
     return $this->login_id_field;
   }

   /**
   * Sets username
   * @param username
   * @return none
   */
   function setUsername($username = null)
   {
      $this->username = $username;
   }

   /**
   * Gets username
   * @return username
   */
   function getUsername()
   {
      return $this->username;
   }

   /**
   * Gets email
   * @return email
   */
   function getEmail()
   {
      return $this->email;
   }

   /**
   * Sets email
   * @param email
   * @return none
   */
   function setEmail($email = null)
   {
     $this->email = strtolower(trim($email));
   }

   /**
   * Sets password
   * @param password
   * @return none
   */
   function setPassword($passwd = null)
   {
      $this->password = $passwd;
   }


   /**
   * Gets first name
   * @return first name
   */
   function getName()
   {
      return $this->name;
   }

   /**
   * Sets first name
   * @param first name
   * @return none
   */
   function setName($first = null)
   {
      $this->name = $first;
   }

   
   
   /**
   * Gets uid
   * @return uid
   */
   function getUID()
   {
      return $this->uid;
   }

   /**
   * Gets login id
   * @return login id
   */
   function getLoginID()
   {
      $func = 'get' . ucfirst($this->login_id_field);

      return $this->$func();
   }

   /**
   * Gets resey key
   * @return resey key
   */
   function getResetKey()
   {
          return $this->reset_key;
   }

   /**
   * Authenticates user
   * @return boolean
   */
   function authenticate()
   {

      // If user is alraedy logged in, return true
      $uid = getFromSession('uid');
      if (! empty($uid))
          return true;

      $loginID      = $this->getLoginID();
      $loginIDField = $this->getLoginIDField();
      $password     = $this->password;


      if (empty($loginID) || empty($password))
          return false;

      $info['table']  = $this->entity_table .' AS U LEFT JOIN '.MINISTRY_LOOKUP_TBL.
                                             ' AS MLT on (U.ministry_id=MLT.id) LEFT JOIN '.AGENCY_LOOKUP_TBL.
                                             ' AS ALT ON (U.agency_id=ALT.id)  LEFT JOIN '.SECTOR_DIVISION_LOOKUP_TBL.
                                             ' AS SDLT ON (U.sector_division=SDLT.id)';
      $info['debug']  = false;
      $info['fields'] = array('U.*','MLT.name as minstry_name','ALT.name as agency_name','SDLT.name as commission_name') ;
      $info['where']  = "U.$loginIDField = " . q($loginID)
                       . " AND U.password = " . q(md5($password))
                       . " AND U.status = " . q(ACTIVE_USER_STATUS);

      $userRecord = select($info);

      // No user found
      if (empty($userRecord))
      {
          return false;
      }
      
      

      $this->setUserSession($userRecord[0]);
      $this->setUserSession($this->loadConfiguration());

      return true;
   }
   
   function loadConfiguration()
   {
       $info['table'] = CONFIGURATION_TBL;
       $info['debug'] = false;
       $result = select($info);
       
       return $result[0];
   }

   /**
   * Sets user information
   * @param user information
   * @return none
   */
   function setUserSession($info = null)
   {
      foreach($info as $key => $value)
      {
         $this->$key = $value;
         insertIntoSession($key, $value);
      }

      insertIntoSession('uid', $info->id);
   }

   /**
   * Makes Password reset key
   * @return Password reset key
   */
   function makePasswordResetKey()
   {
      // Make the reset password link
      $uid = $this->getUID();

      $resetKey = base64_encode($uid . ';' . rand(1,999999));
      return $resetKey;

   }

   /**
   * Sets Password reset key
   * @param Password reset key
   * @return none
   */
   function savePasswordResetKey($resetKey = null)
   {
      $info['table']  = $this->entity_table;
      $info['data']   = array('reset_key' => $resetKey);
      $info['where']  = "uid = " . $this->getUID();
      $info['debug']  = false;
			
			//Update DB
      $ret = update($info);
   }

   /**
   * Encrypt password
   * @param password
   * @return encrypted password
   */
   function encryptPassword($passwd = null)
   {

      $this->password = md5($passwd);

      return $this->password;
   }

   /**
   * Adds user
   * @param none
   * @return uid
   */
   function addUser($photoID = null)
   {
      $data = getUserDataSet(USER_TBL);

      $data['password']    = $this->encryptPassword($data['password']);
      $data['photo_id']    = $photoID;
      $data['create_date'] = date('Y-m-d');

      $info['table'] = $this->entity_table;
      $info['data']  = $data;
      $info['debug'] = false;

      $add = insert($info);

      $userID = $add['newid'];

      if ($userID)
      {
         return $this->addUserAddress($userID);
      }

      return false;
   }

   /**
   * Adds user address
   * @param user_id
   * @return boolean
   */
   function addUserAddress($userID = null)
   {
      $data = getUserDataSet(ADDRESS_TBL);

      $data['user_id']     = $userID;
      $data['create_date'] = date('Y-m-d');

      $info['table'] = ADDRESS_TBL;
      $info['data']  = $data;
      $info['debug'] = false;
      
      //Insert data
      $add = insert($info);
      
      return $add;
   }

   /**
   * Modifies user
   * @param user attributes
   * @return boolean
   */
   function modifyUser($photoID = null, $userID = null)
   {
      $data = getUserDataSet(USER_TBL);

      if ($data['password'])
      {
         $data['password'] = $this->encryptPassword($data['password']);
      }

      if ($photoID)
      {
         $data['photo_id'] = $photoID;
      }

      $data['last_updated'] = date('Y-m-d');

      $info['table'] = $this->entity_table;
      $info['where'] = "uid = $userID";
      $info['debug'] = false;
      $info['data']  = $data;

      $update = update($info);

      if ($userID)
      {
         $address =  $this->modifyUserAddress($userID);

         if ($update || $address)
         {
            return true;
         }
      }

      return false;
   }

   /**
   * Modifies user
   * @param user_id
   * @return boolean
   */
   function modifyUserAddress($userID = null)
   {
      $data = getUserDataSet(ADDRESS_TBL);

      $data['last_updated'] = date('Y-m-d');

      $info['table'] = ADDRESS_TBL;
      $info['where'] = "user_id = $userID";
      $info['debug'] = false;
      $info['data']  = $data;

      $update = update($info);

      return $update;
   }

   /**
   * Deletes user
   * @param none
   * @return uid
   */
   function deleteUser($userID = null)
   {
      $info['table'] = $this->entity_table;
      $info['where'] = "uid = $userID";
      $info['debug'] = false;

      $delete = delete($info);

      if ($delete)
      {
         return $this->deleteUserAddress($userID);
      }

      return false;
   }

   /**
   * Deletes user address
   * @param user_id
   * @return boolean
   */
   function deleteUserAddress($userID = null)
   {

      $info['table'] = ADDRESS_TBL;
      $info['where'] = "user_id = $userID";
      $info['debug'] = false;
      
      //Delete info from DB
      $delete = delete($info);

      return $delete;
   }

   /**
   * Searchs user
   * @param criteria, operator
   * @return dataset
   */
   function search($criteria = null, $operator = nul)
   {
      $rows = $this->_search($criteria, $operator);

      $foundUsers = array();
      
      //If search result exists 
      if (count($rows))
      {
        // Create new user objects
        $dummy = new User();

        foreach ($rows as $i => $rowObject)
        {
           foreach($rowObject as $key => $value)
           {
              $dummy->$key = $value;
           }

           $dummy->loaded = true;

           $foundUsers[] = $dummy;
        }
      }

      return $foundUsers;
   }

} // End of class
?>